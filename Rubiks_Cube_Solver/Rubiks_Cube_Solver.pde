/* //<>//
y Richtung positiv ist nach unten
 x Richtung positiv ist nach rechts
 z Richtung positiv ist auf mich zu, aus dem Bildschirm
 rotation:
 1 = x-y Ebene (Draufsicht)
 2 = y-z Ebene (Wand links)
 3 = x-z Ebene (Wand oben, Decke)
 
 um normaler Cube solver zu machen, also nicht die simulation fürs ausprobieren
 Kommentar umkehren in Zeile:
 71, 88, 89(update_eye();), 137(interneEingabe = besteLoesung;)
 
 */

import processing.video.*;
import processing.serial.*;
Capture video;
Serial port;
Search search;
Table table;

String colorDetectionDatei = "data_for_color_detection_neuer_Cube_bei_Tag.csv";
color weiss = color(255, 255, 255); 
final int weissNum = 1;
color gruen = color(0, 180, 0); 
final int gruenNum = 2;
color rot = color(255, 0, 0); 
final int rotNum = 3;
color blau = color(0, 0, 255); 
final int blauNum = 4;
color orange = color(255, 127, 0); 
final int orangeNum = 5;
color gelb = color(255, 255, 0); 
final int gelbNum = 6;
int[][] cubeColors = new int[3][18];
int[][] cubeColorsIntern = new int[3][18];
int[] seiteSuchenColors = {gelbNum, weissNum, rotNum, gruenNum, orangeNum, blauNum};
int[] roboCubeColors = new int[6];
int counter = 0, welcheSeiteZuScannen = 1;
char eingabe = ' ';
String interneEingabe = " ";
long prevMillis = 0, prevMillisScannen = 0;
float animationTime = 80, animationSteps = 10;
float time = 0;
float x = -50, y = 100;
float anfangsX, anfangsY, anfangsX2, anfangsY2;
boolean mouse = true, scannen = false, gescannt = false;
boolean animieren = false;
String finalresult = "";
String roboMoves = "", besteLoesung = "";

void setup() {
  size(1280, 720, P3D);
  rectMode(CENTER);
  video = new Capture(this, Capture.list()[35]);
  port = new Serial(this, "COM4", 9600);
  search = new Search();
  video.start();
  strokeWeight(2);
  cubeColorDefinitions();
  copy_CubeColors_To_CubeColorsIntern();

  table = loadTable(colorDetectionDatei, "header");             //Initialisieren wo die Daten her kommen, reihen definieren und daten Laden
  TableRow ausrichtungTable = table.getRow(0);
  sensitiviteat = ausrichtungTable.getInt("sens");
  rectSize = ausrichtungTable.getInt("groesse");
  rectOffset = ausrichtungTable.getInt("abstand");
  xRect1 = ausrichtungTable.getInt("rectPosX");
  yRect1 = ausrichtungTable.getInt("rectPosY");

  delay(1500);    //Auf die Kamera warten bis sie angeht, sonst gibts einen Fehler
  video.read();
}

void draw() {
  background(100);
  stroke(255, 0, 0);
  point(0, 0, 0);
  stroke(0);
  HUDanzeigen();

  if (!scannen) {  // normale Würfelansicht, wenn nicht gescannt wird
    update_eye();
    prevMillisScannen = millis();
  }
  if (!gescannt && wennWuerfelDrin()) {
    scannen = true;
    cubeSeitenScannen();
  }
  if (!gescannt) {
    webcamUpdate();
  } else {
    video.stop();
    scannen = false;
  }

  //update_eye();
  if (eingabe == 'L') {
    //CFOP();
    besteLoesung = TPAloesung_to_internLoesung(search.solution(CubeColors_to_TPAdef(), 21, 1000000000, 0, 0));  // Kociemba´s Two-Phase-Algorithm
    roboMoves = RoboCodeGenerator(besteLoesung);
    interneEingabe = besteLoesung;

    println(laengeLoesungBerechnen(besteLoesung)-1 + " Moves " + besteLoesung);
    println(laengeLoesungBerechnen(roboMoves)-1 + " Moves " + roboMoves);

    if (besteLoesung.equals("Error 1,")) {  // wenn der Würfel falsch eingescannt wurde nochmal scannen
      besteLoesung = "";
      roboMoves = "";
      gescannt = false;
      video.start();
      welcheSeiteZuScannen = 1;
    }
    eingabe = ' ';
  }

  ausgabeAnRobo(roboMoves, besteLoesung);  // Hier ist eigntlich mit das wichtigste vom Programm, denn hier werden die Schritte an den Roboter nacheinander rausgegeben

  if (eingabe == 'K') {
    interneEingabe = scrambeln();
    println(interneEingabe);
    eingabe = ' ';
  }



  eingabeChecken();
  InterneEingabeChecken();
  if (eingabe == 'Q' || eingabe == 'A' ||
    eingabe == 'q' || eingabe == 'a') {
    qaDrehAnimation();
  } else if (eingabe == 'W' || eingabe == 'S' ||
    eingabe == 'w' || eingabe == 's') {
    wsDrehAnimation();
  } else if (eingabe == 'E' || eingabe == 'D' ||
    eingabe == 'e' || eingabe == 'd') {
    edDrehAnimation();
  } else if (eingabe == 'R' || eingabe == 'F' ||
    eingabe == 'r' || eingabe == 'f') {
    rfDrehAnimation();
  } else if (eingabe == 'T' || eingabe == 'G' ||
    eingabe == 't' || eingabe == 'g') {
    tgDrehAnimation();
  } else if (eingabe == 'Z' || eingabe == 'H' ||
    eingabe == 'z' || eingabe == 'h') {
    zhDrehAnimation();
  } else {
    //3x3 Wand oben ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        pushMatrix();
        drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        popMatrix();
      }
    }
    //3x3 Wand vorne ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        pushMatrix();
        drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        popMatrix();
      }
    }
    //3x3 Wand rechts ohne Animation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        pushMatrix();
        drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        popMatrix();
      }
    }
    //3x3 Wand hinten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        pushMatrix();
        drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        popMatrix();
      }
    }
    //3x3 Wand links ohne Animation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        pushMatrix();
        drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        popMatrix();
      }
    }
    //3x3 Wand unten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        pushMatrix();
        drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        popMatrix();
      }
    }
  }
}

int laengeLoesungBerechnen(String a) {
  int toReturn = 0, xCounter = 0;
  String[] b = split(a, ",");
  for (int i = 0; i < b.length; i++) {
    if (b[i].equals("X") || b[i].equals("X'")) {
      xCounter++;
    }
  }

  toReturn = b.length - xCounter;
  return toReturn;
}

void drawRect(int x, int y, int z, int rotation, int rectGroesse, color farbe) {
  pushMatrix();
  fill(farbe);
  translate(x, y, z);
  switch(rotation) {
    case(1): 
    rect(0, 0, rectGroesse, rectGroesse);
    break;

    case(2): 
    rotateY(HALF_PI);
    rect(0, 0, rectGroesse, rectGroesse);
    break;

    case(3): 
    rotateX(HALF_PI);
    rect(0, 0, rectGroesse, rectGroesse);
    break;
  }
  popMatrix();
}

int xCubeColors(int a) {
  int returnNum = 0;
  switch(a) {
    case(0): 
    returnNum = 2;
    break;

    case(50): 
    returnNum = 1;
    break;

    case(100): 
    returnNum = 0;
    break;
  }
  return returnNum;
}

int yCubeColors(int a) {
  int returnNum = 0;
  switch(a) {
    case(100): 
    returnNum = 2;
    break;

    case(50): 
    returnNum = 1;
    break;

    case(0): 
    returnNum = 0;
    break;
  }
  return returnNum;
}

void drawWallColors(int x, int y, int z, int xRaw, int yRaw, int rotation, int val) {
  switch(cubeColors[xCubeColors(xRaw)][yCubeColors(yRaw) + val]) {
    case(1): 
    drawRect(x, y, z, rotation, 50, weiss);
    break;
    case(2): 
    drawRect(x, y, z, rotation, 50, gruen);
    break;
    case(3): 
    drawRect(x, y, z, rotation, 50, rot);
    break;
    case(4): 
    drawRect(x, y, z, rotation, 50, blau);
    break;
    case(5): 
    drawRect(x, y, z, rotation, 50, orange);
    break;
    case(6): 
    drawRect(x, y, z, rotation, 50, gelb);
    break;
  }
}
