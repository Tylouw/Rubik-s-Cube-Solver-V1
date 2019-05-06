color tempColor;
int sensitiviteat;
float d = 0;
int[] colorSafe = new int[9];
int rectSize;
int rectOffset;

int xRect1, yRect1;
int xRect2, yRect2;
int xRect3, yRect3;
int xRect4, yRect4;
int xRect5, yRect5;
int xRect6, yRect6;
int xRect7, yRect7;
int xRect8, yRect8;
int xRect9, yRect9;

int farbeNummer = 0;

color weissCR, gruenCR, rotCR, blauCR, orangeCR, gelbCR; // CR = Color Recognition

void webcamUpdate() {

  video.loadPixels();

  xRect2 = xRect1 + rectSize + rectOffset; 
  yRect2 = yRect1;    //Berechnen wo die anderen Quadrate sein müssen in relation zum ersten Quadrat, mit Einberechnung der Quadratgröße und dem Abstand von jedem Quadrat
  xRect3 = xRect2 + rectSize + rectOffset; 
  yRect3 = yRect1;

  xRect4 = xRect1; 
  yRect4 = yRect1 + rectSize + rectOffset;
  xRect5 = xRect2; 
  yRect5 = yRect1 + rectSize + rectOffset;
  xRect6 = xRect3; 
  yRect6 = yRect1 + rectSize + rectOffset;

  xRect7 = xRect1; 
  yRect7 = yRect4 + rectSize + rectOffset;
  xRect8 = xRect2; 
  yRect8 = yRect4 + rectSize + rectOffset;
  xRect9 = xRect3; 
  yRect9 = yRect4 + rectSize + rectOffset;

  tempColor = avColor(xRect1, yRect1);        //Hier wird die Farbe für jedes Quadrat ausgerechnet, in jedem Frame
  farbeNummer = farbErkennung(tempColor);
  colorSafe[0] = farbeNummer;


  tempColor = avColor(xRect2, yRect2);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[1] = farbeNummer;


  tempColor = avColor(xRect3, yRect3);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[2] = farbeNummer;


  tempColor = avColor(xRect4, yRect4);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[3] = farbeNummer;


  tempColor = avColor(xRect5, yRect5);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[4] = farbeNummer;


  tempColor = avColor(xRect6, yRect6);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[5] = farbeNummer;


  tempColor = avColor(xRect7, yRect7);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[6] = farbeNummer;


  tempColor = avColor(xRect8, yRect8);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[7] = farbeNummer;


  tempColor = avColor(xRect9, yRect9);
  farbeNummer = farbErkennung(tempColor);
  colorSafe[8] = farbeNummer;
}

boolean wennWuerfelDrin() {
  boolean toReturn = true;
  for (int i = 0; i < colorSafe.length; i++) {
    if (colorSafe[i] == 0) {
      toReturn = false;
    }
  }

  if (toReturn) {
    camAnzeigen();
  }

  return toReturn;
}

void camAnzeigen() {
  eyeY = 0;
  eyeX = 0;
  eyeZ = 1000;
  camera(eyeX, eyeY, eyeZ, 0, 0, 0, 0, 1, 0);

  pushMatrix();
  translate(-600, -400, 199);
  image(video, 0, 0);
  translate(rectSize/2, rectSize/2, 1);

  rectAusmalen(colorSafe[0]);
  rect(xRect1, yRect1, rectSize, rectSize);
  rectLabel(colorSafe[0], xRect1, yRect1);

  rectAusmalen(colorSafe[1]);
  rect(xRect2, yRect2, rectSize, rectSize);
  rectLabel(colorSafe[1], xRect2, yRect2);

  rectAusmalen(colorSafe[2]);
  rect(xRect3, yRect3, rectSize, rectSize);
  rectLabel(colorSafe[2], xRect3, yRect3);

  rectAusmalen(colorSafe[3]);
  rect(xRect4, yRect4, rectSize, rectSize);
  rectLabel(colorSafe[3], xRect4, yRect4);

  rectAusmalen(colorSafe[4]);
  rect(xRect5, yRect5, rectSize, rectSize);
  rectLabel(colorSafe[4], xRect5, yRect5);

  rectAusmalen(colorSafe[5]);
  rect(xRect6, yRect6, rectSize, rectSize);
  rectLabel(colorSafe[5], xRect6, yRect6);

  rectAusmalen(colorSafe[6]);
  rect(xRect7, yRect7, rectSize, rectSize);
  rectLabel(colorSafe[6], xRect7, yRect7);

  rectAusmalen(colorSafe[7]);
  rect(xRect8, yRect8, rectSize, rectSize);
  rectLabel(colorSafe[7], xRect8, yRect8);

  rectAusmalen(colorSafe[8]);
  rect(xRect9, yRect9, rectSize, rectSize);
  rectLabel(colorSafe[8], xRect9, yRect9);
  popMatrix();
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Farberkennung
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

int farbErkennung(color currentColor) {                //Bei der Farberkennung wird eine Durchschnittsfarbe für das jeweilige Quadrat reingegeben. Sie wird mit einem Beispiel für jede Farbe verglichen. Der Vergleich erfolgt in der "dist"-Funktion, wo der "Abstand"
  int farb = 0;                                       //von dem einzelnen RGB-Werten berechnet wird, den der Abstand unter der senitivität liegt, ist es die Farbe
  float r1 = red(currentColor);
  float g1 = green(currentColor);
  float b1 = blue(currentColor);
  float r2;
  float g2;
  float b2;

  for (int i = 1; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    r2 = row.getInt("R");
    g2 = row.getInt("G");
    b2 = row.getInt("B");

    d = dist(r1, g1, b1, r2, g2, b2);
    if (d < sensitiviteat) { 
      farb = row.getInt("color");
    }
  }
  return farb;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// Nützliche Funktionen
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


void captureEvent(Capture video) {    //lädt immer ein neues Bild, also ein Frame, wenn einer von der Kamera verfügbar ist
  video.read();
  video.updatePixels();
}

color avColor(int xRect, int yRect) {                      //Sehr wichtig für die Farberkennung. Hier wird die durchschnittsfarbe die jeweiligen Abmessungen berechnet
  float avR = 0, avG = 0, avB = 0;

  for (int x = xRect; x < xRect + rectSize; x++) {
    for (int y = yRect; y < yRect + rectSize; y++) {
      avR = avR + red(video.pixels[xy(x, y)]);
      avG = avG + green(video.pixels[xy(x, y)]);
      avB = avB + blue(video.pixels[xy(x, y)]);
    }
  }
  avR = avR / sq(rectSize);
  avG = avG / sq(rectSize);
  avB = avB / sq(rectSize);

  return color(avR, avG, avB);
}

int xy(int x, int y) {                    //Diese Funktion ist wichtig für pixels[] Funktion, denn sie berechnet aus den x und y koordinaten die Zahl, wo das Pixel für pixels[] ist
  int gesamt = x + y * video.width;
  return gesamt;
}

void rectAusmalen(int farbe) {    //Färbt das jeweilige Quadrat in der Farbe die erkannt wurde
  switch(farbe) {
    case(0):  //wenn keine Farbe erkannt wurde, wird es weiß gefärbt
    fill(255);
    break;

    case(1): 
    fill(weiss);
    break;

    case(2):
    fill(gruen);
    break;

    case(3):
    fill(rot);
    break;

    case(4):
    fill(blau);
    break;

    case(5):
    fill(orange);
    break;

    case(6):
    fill(gelb);
    break;
  }
}

void rectLabel(int farbe, int x, int y) {    //schreibt die Farbe des Quadrats unten hin
  textSize(27);
  fill(#932B85);
  switch(farbe) {
    case(0):
    text("nix", x, y + rectSize);
    break;

    case(1):
    text("Weiß", x, y + rectSize);
    break;

    case(2):
    text("Grün", x, y + rectSize);
    break;

    case(3):
    text("Rot", x, y + rectSize);
    break;

    case(4):
    text("Blau", x, y + rectSize);
    break;

    case(5):
    text("Orange", x, y + rectSize);
    break;

    case(6):
    text("Gelb", x, y + rectSize);
    break;
  }
}
