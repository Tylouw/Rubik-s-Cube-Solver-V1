int Ausgabecounter = 0, moovesCounter = 0;
int klCounter = 3;
long prevMillisRobo = 0;
void ausgabeAnRobo(String robCod, String mooves) {
  String[] robCod2 = split(robCod, ",");
  String[] moves2 = split(mooves, ",");

  if (Ausgabecounter < robCod2.length) {
    if (robCod2.length != 1 && millis() - prevMillisRobo > 1500) {
      if (klCounter == 3) {
        if (Ausgabecounter < robCod2.length-1 && moves2[moovesCounter].equals(moves2[moovesCounter+1])) {
          interneEingabe = moves2[moovesCounter];
          interneEingabe += ",";
          interneEingabe += moves2[moovesCounter];
          moovesCounter++;
        } else {
          interneEingabe = moves2[moovesCounter];
        }
        klCounter = 1;
        moovesCounter++;
      }

      if (robCod2[Ausgabecounter].equals("cw")) {
        port.write("a" + 1 + "\n");
      } else if (robCod2[Ausgabecounter].equals("ccw")) {
        port.write("a" + 2 + "\n");
      } else if (robCod2[Ausgabecounter].equals("kl")) {
        port.write("a" + 3 + "\n");
        klCounter++;
      } else if (robCod2[Ausgabecounter].equals("wd")) {
        port.write("a" + 4 + "\n");
      }
      prevMillisRobo = millis();
      Ausgabecounter++;
    }
  }

  if (Ausgabecounter == robCod2.length) {  // wenn Würfel gelöst ist alles wirder zurücksetzen zum erneuten Lösen
    Ausgabecounter = 0;
    besteLoesung = "";
    roboMoves = "";
    gescannt = false;
    video.start();
    welcheSeiteZuScannen = 1;
    moovesCounter = 0;
    while (wennWuerfelDrin()) {
      webcamUpdate();
    }
  }
}


void HUDanzeigen() {
  pushMatrix();
  fill(255);
  textSize(30);
  text(Ausgabecounter, -40, -100);
  text("/", 20, -100);
  text(laengeLoesungBerechnen(roboMoves), 30, -100);
  text("RoboMoves", 90, -100);
  popMatrix();
}
