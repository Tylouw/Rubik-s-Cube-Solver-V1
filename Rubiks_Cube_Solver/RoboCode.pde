
int movesCounter = 0;

String RoboCodeGenerator(String zuUmwandelnderCode) {

  String[] moves = split(zuUmwandelnderCode, ",");
  zuUmwandelnderCode = "";
  for (movesCounter = 0; movesCounter < moves.length; movesCounter++) {

    if (roboCubeColors[0] == seiteSuchen(moves[movesCounter])) {

      if (moves[movesCounter].toUpperCase().equals(moves[movesCounter])) { // wenn es ein großbuchstabe ist
        roboCubeColors = wd(roboCubeColors); 
        roboCubeColors = wd(roboCubeColors);
        zuUmwandelnderCode += "wd,wd,";
        zuUmwandelnderCode += "kl,"; // Klappe runter
        zuUmwandelnderCode += grossBuchstabe(moves, movesCounter);
        zuUmwandelnderCode += "kl,"; // Klappe hoch
      } else { // wenn es ein kleinbuchstabe ist
        if (checkXYZMove(moves, movesCounter)) { // wenn es ein x,y oder z Move ist
          kleinBuchstabe(moves, movesCounter); // muss trotzdem ausgeführt werden, weil die seiteSuchenColors ja verändert werden muss. Es returnt aber nichts, weil bei x,y oder z kein Move gemacht wird
        } else { // wenn es ein normaler r oder d move wäre
          roboCubeColors = wd(roboCubeColors); 
          roboCubeColors = wd(roboCubeColors);
          zuUmwandelnderCode += "wd,wd,";
          zuUmwandelnderCode += "kl,"; // Klappe runter
          zuUmwandelnderCode += kleinBuchstabe(moves, movesCounter);
          zuUmwandelnderCode += "kl,"; // Klappe hoch
        }
      }
    } else if (roboCubeColors[1] == seiteSuchen(moves[movesCounter])) {

      if (moves[movesCounter].toUpperCase().equals(moves[movesCounter])) {
        zuUmwandelnderCode += "kl,"; // Klappe runter
        zuUmwandelnderCode += grossBuchstabe(moves, movesCounter);
        zuUmwandelnderCode += "kl,"; // Klappe hoch
      } else { // wenn es ein kleinbuchstabe ist
        if (checkXYZMove(moves, movesCounter)) { // wenn es ein x,y oder z Move ist
          kleinBuchstabe(moves, movesCounter); // muss trotzdem ausgeführt werden, weil die seiteSuchenColors ja verändert werden muss. Es returnt aber nichts, weil bei x,y oder z kein Move gemacht wird
        } else { // wenn es ein normaler r oder d move wäre
          zuUmwandelnderCode += "kl,"; // Klappe runter
          zuUmwandelnderCode += kleinBuchstabe(moves, movesCounter);
          zuUmwandelnderCode += "kl,"; // Klappe hoch
        }
      }
    } else if (roboCubeColors[2] == seiteSuchen(moves[movesCounter])) {

      if (moves[movesCounter].toUpperCase().equals(moves[movesCounter])) {
        roboCubeColors = cw(roboCubeColors); 
        roboCubeColors = wd(roboCubeColors);
        zuUmwandelnderCode += "cw,wd,";
        zuUmwandelnderCode += "kl,"; // Klappe runter
        zuUmwandelnderCode += grossBuchstabe(moves, movesCounter);
        zuUmwandelnderCode += "kl,"; // Klappe hoch
      } else { // wenn es ein kleinbuchstabe ist
        if (checkXYZMove(moves, movesCounter)) { // wenn es ein x,y oder z Move ist
          kleinBuchstabe(moves, movesCounter); // muss trotzdem ausgeführt werden, weil die seiteSuchenColors ja verändert werden muss. Es returnt aber nichts, weil bei x,y oder z kein Move gemacht wird
        } else { // wenn es ein normaler r oder d move wäre
          roboCubeColors = cw(roboCubeColors); 
          roboCubeColors = wd(roboCubeColors);
          zuUmwandelnderCode += "cw,wd,";
          zuUmwandelnderCode += "kl,"; // Klappe runter
          zuUmwandelnderCode += kleinBuchstabe(moves, movesCounter);
          zuUmwandelnderCode += "kl,"; // Klappe hoch
        }
      }
    } else if (roboCubeColors[3] == seiteSuchen(moves[movesCounter])) {

      if (moves[movesCounter].toUpperCase().equals(moves[movesCounter])) {
        roboCubeColors = cw(roboCubeColors); 
        roboCubeColors = cw(roboCubeColors); 
        roboCubeColors = wd(roboCubeColors);
        zuUmwandelnderCode += "cw,cw,wd,";
        zuUmwandelnderCode += "kl,"; // Klappe runter
        zuUmwandelnderCode += grossBuchstabe(moves, movesCounter);
        zuUmwandelnderCode += "kl,"; // Klappe hoch
      } else { // wenn es ein kleinbuchstabe ist
        if (checkXYZMove(moves, movesCounter)) { // wenn es ein x,y oder z Move ist
          kleinBuchstabe(moves, movesCounter); // muss trotzdem ausgeführt werden, weil die seiteSuchenColors ja verändert werden muss. Es returnt aber nichts, weil bei x,y oder z kein Move gemacht wird
        } else { // wenn es ein normaler r oder d move wäre
          roboCubeColors = cw(roboCubeColors); 
          roboCubeColors = cw(roboCubeColors); 
          roboCubeColors = wd(roboCubeColors);
          zuUmwandelnderCode += "cw,cw,wd,";
          zuUmwandelnderCode += "kl,"; // Klappe runter
          zuUmwandelnderCode += kleinBuchstabe(moves, movesCounter);
          zuUmwandelnderCode += "kl,"; // Klappe hoch
        }
      }
    } else if (roboCubeColors[4] == seiteSuchen(moves[movesCounter])) {

      if (moves[movesCounter].toUpperCase().equals(moves[movesCounter])) {
        roboCubeColors = ccw(roboCubeColors);
        roboCubeColors = wd(roboCubeColors);
        zuUmwandelnderCode += "ccw,wd,";
        zuUmwandelnderCode += "kl,"; // Klappe runter
        zuUmwandelnderCode += grossBuchstabe(moves, movesCounter);
        zuUmwandelnderCode += "kl,"; // Klappe hoch
      } else { // wenn es ein kleinbuchstabe ist
        if (checkXYZMove(moves, movesCounter)) { // wenn es ein x,y oder z Move ist
          kleinBuchstabe(moves, movesCounter); // muss trotzdem ausgeführt werden, weil die seiteSuchenColors ja verändert werden muss. Es returnt aber nichts, weil bei x,y oder z kein Move gemacht wird
        } else { // wenn es ein normaler r oder d move wäre
          roboCubeColors = ccw(roboCubeColors);
          roboCubeColors = wd(roboCubeColors);
          zuUmwandelnderCode += "ccw,wd,";
          zuUmwandelnderCode += "kl,"; // Klappe runter
          zuUmwandelnderCode += kleinBuchstabe(moves, movesCounter);
          zuUmwandelnderCode += "kl,"; // Klappe hoch
        }
      }
    } else if (roboCubeColors[5] == seiteSuchen(moves[movesCounter])) { 


      if (moves[movesCounter].toUpperCase().equals(moves[movesCounter])) { // Wenn Großbuchstabe
        roboCubeColors = wd(roboCubeColors);
        zuUmwandelnderCode += "wd,";
        zuUmwandelnderCode += "kl,"; // Klappe runter
        zuUmwandelnderCode += grossBuchstabe(moves, movesCounter);
        zuUmwandelnderCode += "kl,"; // Klappe hoch
      } else { // wenn es ein kleinbuchstabe ist
        if (checkXYZMove(moves, movesCounter)) { // wenn es ein x,y oder z Move ist
          kleinBuchstabe(moves, movesCounter); // muss trotzdem ausgeführt werden, weil die seiteSuchenColors ja verändert werden muss. Es returnt aber nichts, weil bei x,y oder z kein Move gemacht wird
        } else { // wenn es ein normaler r oder d move wäre
          roboCubeColors = wd(roboCubeColors);
          zuUmwandelnderCode += "wd,";
          zuUmwandelnderCode += "kl,"; // Klappe runter
          zuUmwandelnderCode += kleinBuchstabe(moves, movesCounter);
          zuUmwandelnderCode += "kl,"; // Klappe hoch
        }
      }
    }
  }
  return zuUmwandelnderCode;
}




boolean checkXYZMove(String[] moves, int i) {
  boolean toReturn = false;

  if (i < moves.length-1 && moves[i].equals("r") && moves[i+1].equals("L'")) {
    toReturn = true;
  } else if (i < moves.length-1 && moves[i].equals("r'") && moves[i+1].equals("L")) {
    toReturn = true;
  } else if (i < moves.length-1 && moves[i].equals("u") && moves[i+1].equals("D'")) {
    toReturn = true;
  } else if (i < moves.length-1 && moves[i].equals("u'") && moves[i+1].equals("D")) {
    toReturn = true;
  } else if (i < moves.length-1 && moves[i].equals("f") && moves[i+1].equals("B'")) {
    toReturn = true;
  } else if (i < moves.length-1 && moves[i].equals("f'") && moves[i+1].equals("B")) {
    toReturn = true;
  }
  return toReturn;
}


void seiteSuchenVeraendern(String a) {

  if ((a.equals("x") || a.equals("r"))  || a.equals("l'") ) {
    int[] seiteSuchenTemp = new int[6];
    for (int j = 0; j < 6; j++) {
      seiteSuchenTemp[j] = seiteSuchenColors[j];
    }
    seiteSuchenColors[0] = seiteSuchenTemp[2];
    seiteSuchenColors[2] = seiteSuchenTemp[1];
    seiteSuchenColors[1] = seiteSuchenTemp[4];
    seiteSuchenColors[4] = seiteSuchenTemp[0];
  } else if (a.equals("x'") || a.equals("r'") || a.equals("l")) { // wenn ein x' move gemacht wird
    int[] seiteSuchenTemp = new int[6];
    for (int j = 0; j < 6; j++) {
      seiteSuchenTemp[j] = seiteSuchenColors[j];
    }
    seiteSuchenColors[0] = seiteSuchenTemp[4];
    seiteSuchenColors[4] = seiteSuchenTemp[1];
    seiteSuchenColors[1] = seiteSuchenTemp[2];
    seiteSuchenColors[2] = seiteSuchenTemp[0];
  } else if (a.equals("y") || a.equals("u") || a.equals("d'")) { // wenn ein y move gemacht wird
    int[] seiteSuchenTemp = new int[6];
    for (int j = 0; j < 6; j++) {
      seiteSuchenTemp[j] = seiteSuchenColors[j];
    }
    seiteSuchenColors[2] = seiteSuchenTemp[3];
    seiteSuchenColors[3] = seiteSuchenTemp[4];
    seiteSuchenColors[4] = seiteSuchenTemp[5];
    seiteSuchenColors[5] = seiteSuchenTemp[2];
  } else if (a.equals("y'") || a.equals("u'") || a.equals("d")) { // wenn ein y' move gemacht wird
    int[] seiteSuchenTemp = new int[6];
    for (int j = 0; j < 6; j++) {
      seiteSuchenTemp[j] = seiteSuchenColors[j];
    }
    seiteSuchenColors[2] = seiteSuchenTemp[5];
    seiteSuchenColors[5] = seiteSuchenTemp[4];
    seiteSuchenColors[4] = seiteSuchenTemp[3];
    seiteSuchenColors[3] = seiteSuchenTemp[2];
  } else if (a.equals("z") || a.equals("f") || a.equals("b'")) { // wenn ein z move gemacht wird
    int[] seiteSuchenTemp = new int[6];
    for (int j = 0; j < 6; j++) {
      seiteSuchenTemp[j] = seiteSuchenColors[j];
    }
    seiteSuchenColors[0] = seiteSuchenTemp[5];
    seiteSuchenColors[5] = seiteSuchenTemp[1];
    seiteSuchenColors[1] = seiteSuchenTemp[3];
    seiteSuchenColors[3] = seiteSuchenTemp[0];
  } else if (a.equals("z'") || a.equals("f'") || a.equals("b")) { // wenn ein z' move gemacht wird
    int[] seiteSuchenTemp = new int[6];
    for (int j = 0; j < 6; j++) {
      seiteSuchenTemp[j] = seiteSuchenColors[j];
    }
    seiteSuchenColors[0] = seiteSuchenTemp[3];
    seiteSuchenColors[3] = seiteSuchenTemp[1];
    seiteSuchenColors[1] = seiteSuchenTemp[5];
    seiteSuchenColors[5] = seiteSuchenTemp[0];
  }
}

String kleinBuchstabe(String[] moves, int i) {
  String toReturn = "";
  int moveLaenge = moves[i].length();

  if (i < moves.length-1 && moves[i].equals("r") && moves[i+1].equals("L'")) {
    seiteSuchenVeraendern("x");
    movesCounter++;
  } else if (i < moves.length-1 && moves[i].equals("r'") && moves[i+1].equals("L")) {
    seiteSuchenVeraendern("x'");
    movesCounter++;
  } else if (i < moves.length-1 && moves[i].equals("u") && moves[i+1].equals("D'")) {
    seiteSuchenVeraendern("y");
    movesCounter++;
  } else if (i < moves.length-1 && moves[i].equals("u'") && moves[i+1].equals("D")) {
    seiteSuchenVeraendern("y'");
    movesCounter++;
  } else if (i < moves.length-1 && moves[i].equals("f") && moves[i+1].equals("B'")) {
    seiteSuchenVeraendern("z");
    movesCounter++;
  } else if (i < moves.length-1 && moves[i].equals("f'") && moves[i+1].equals("B")) {
    seiteSuchenVeraendern("z'");
    movesCounter++;
  } else {
    if (moveLaenge == 1) {    // wenn es ein r oder ein u move ist
      toReturn += "ccw,";
      seiteSuchenVeraendern(moves[i]);
      // wenn danach der gleiche move nochmal also zb r2
      if (i < moves.length-1 && moves[i].equals(moves[i+1])) {
        toReturn += "ccw,";
        movesCounter++; // i einen erhöhen, damit er den nächsten move überspringt, weil wir den ja schon gemacht haben
      }
    } else if (moveLaenge == 2) {   // wenn es ein r' oder ein u' move ist
      toReturn += "cw,";
      seiteSuchenVeraendern(moves[i]);
      // wenn danach der gleiche move nochmal also zb r2
      if (i < moves.length-1 && moves[i].equals(moves[i+1])) {
        toReturn += "cw,";
        movesCounter++; // i einen erhöhen, damit er den nächsten move überspringt, weil wir den ja schon gemacht haben
      }
    }
  }

  return toReturn;
}


String grossBuchstabe(String[] moves, int i) {
  String toReturn = "";
  int moveLaenge = moves[i].length();

  if (moveLaenge == 1) {    // wenn es ein R oder ein U move ist
    toReturn += "ccw,";
    // wenn danach der gleiche move nochmal also zb R2
    if (i < moves.length-1 && moves[i].equals(moves[i+1])) {
      toReturn += "ccw,";
      movesCounter++; // i einen erhöhen, damit er den nächsten move überspringt, weil wir den ja schon gemacht haben
    }
  } else if (moveLaenge == 2) {   // wenn es ein R' oder ein U' move ist
    toReturn += "cw,";
    // wenn danach der gleiche move nochmal also zb R2
    if (i < moves.length-1 && moves[i].equals(moves[i+1])) {
      toReturn += "cw,";
      movesCounter++; // i einen erhöhen, damit er den nächsten move überspringt, weil wir den ja schon gemacht haben
    }
  }

  return toReturn;
}

int seiteSuchen(String a) {
  int toReturn = 0;

  if (a.equals("U") || a.equals("U'") || a.equals("d") || a.equals("d'")) {
    toReturn = seiteSuchenColors[0];
  } else if (a.equals("D") || a.equals("D'")  || a.equals("u") || a.equals("u'")) {
    toReturn = seiteSuchenColors[1];
  } else if (a.equals("R") || a.equals("R'")  || a.equals("l") || a.equals("l'")) {
    toReturn = seiteSuchenColors[3];
  } else if (a.equals("L") || a.equals("L'")  || a.equals("r") || a.equals("r'")) {
    toReturn = seiteSuchenColors[5];
  } else if (a.equals("F") || a.equals("F'")  || a.equals("b") || a.equals("b'")) {
    toReturn = seiteSuchenColors[2];
  } else if (a.equals("B") || a.equals("B'")  || a.equals("f") || a.equals("f'")) {
    toReturn = seiteSuchenColors[4];
  } else {
  }
  return toReturn;
}

int[] cw(int[] a) {
  int[] temp = new int[a.length];
  for (int i = 0; i < a.length; i++) {
    temp[i] = a[i];
  }
  a[2] = temp[3];
  a[5] = temp[2];
  a[4] = temp[5];
  a[3] = temp[4];
  return a;
}

int[] ccw(int[] a) {
  int[] temp = new int[a.length];
  for (int i = 0; i < a.length; i++) {
    temp[i] = a[i];
  }
  a[3] = temp[2];
  a[2] = temp[5];
  a[5] = temp[4];
  a[4] = temp[3];
  return a;
}

int[] wd(int[] a) {
  int[] temp = new int[a.length];
  for (int i = 0; i < a.length; i++) {
    temp[i] = a[i];
  }
  a[0] = temp[3];
  a[5] = temp[0];
  a[1] = temp[5];
  a[3] = temp[1];
  return a;
}

// wenn z.B. ein r Move gebraucht wird, wird stattdessen ein L Move gemacht und die roboCubeColors werden verändert, als würde man ein M move machen. Also die Farbe oben (Gelb) wird die Farbe vorne (Rot)... 
