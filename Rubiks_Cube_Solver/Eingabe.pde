boolean keyIsPressed = true, shiftKey = false, qKey = false, aKey = false, wKey = false, sKey = false, eKey = false, dKey = false, rKey = false, fKey = false, tKey = false, gKey = false, zKey = false, hKey = false, lKey = false, kKey = false; //<>//

void eingabeChecken() {
  if (keyIsPressed) {
    if (qKey) eingabe = 'Q';
    if (aKey) eingabe = 'A';
    if (wKey) eingabe = 'W';
    if (sKey) eingabe = 'S';
    if (eKey) eingabe = 'E';
    if (dKey) eingabe = 'D';
    if (rKey) eingabe = 'R';
    if (fKey) eingabe = 'F';
    if (tKey) eingabe = 'T';
    if (gKey) eingabe = 'G';
    if (zKey) eingabe = 'Z';
    if (hKey) eingabe = 'H';
    if (lKey) eingabe = 'L';
    if (kKey) eingabe = 'K';
    if (shiftKey && qKey) eingabe = 'q';
    if (shiftKey && aKey) eingabe = 'a';
    if (shiftKey && wKey) eingabe = 'w';
    if (shiftKey && sKey) eingabe = 's';
    if (shiftKey && eKey) eingabe = 'e';
    if (shiftKey && dKey) eingabe = 'd';
    if (shiftKey && rKey) eingabe = 'r';
    if (shiftKey && fKey) eingabe = 'f';
    if (shiftKey && tKey) eingabe = 't';
    if (shiftKey && gKey) eingabe = 'g';
    if (shiftKey && zKey) eingabe = 'z';
    if (shiftKey && hKey) eingabe = 'h';
    if (eingabe != ' ' && keyPressed)keyIsPressed = false;
    //println(eingabe);
  }
}


void keyPressed() {
  if (keyCode == 'Q') {
    qKey = true;
  }
  if (keyCode == 'A') {
    aKey = true;
  }
  if (keyCode == 'W') {
    wKey = true;
  }
  if (keyCode == 'S') {
    sKey = true;
  }
  if (keyCode == 'E') {
    eKey = true;
  }
  if (keyCode == 'D') {
    dKey = true;
  }
  if (keyCode == 'R') {
    rKey = true;
  }
  if (keyCode == 'F') {
    fKey = true;
  }
  if (keyCode == 'T') {
    tKey = true;
  }
  if (keyCode == 'G') {
    gKey = true;
  }
  if (keyCode == 'Y') {
    zKey = true;
  }
  if (keyCode == 'H') {
    hKey = true;
  }
  if (keyCode == 'L') {
    lKey = true;
  }
  if (keyCode == 'K') {
    kKey = true;
  }
  if (keyCode == SHIFT && shiftKey == false) {
    shiftKey = true;
  }
}

void keyReleased() {
  keyIsPressed = true;
  if (keyCode == 'Q') {
    qKey = false;
  }
  if (keyCode == 'A') {
    aKey = false;
  }
  if (keyCode == 'W') {
    wKey = false;
  }
  if (keyCode == 'S') {
    sKey = false;
  }
  if (keyCode == 'E') {
    eKey = false;
  }
  if (keyCode == 'D') {
    dKey = false;
  }
  if (keyCode == 'R') {
    rKey = false;
  }
  if (keyCode == 'F') {
    fKey = false;
  }
  if (keyCode == 'T') {
    tKey = false;
  }
  if (keyCode == 'G') {
    gKey = false;
  }
  if (keyCode == 'Y') {
    zKey = false;
  }
  if (keyCode == 'H') {
    hKey = false;
  }
  if (keyCode == 'L') {
    lKey = false;
  }
  if (keyCode == 'K') {
    kKey = false;
  }
  if (keyCode == SHIFT) {
    shiftKey = false;
  }
}

void InterneEingabeChecken() {
  if (interneEingabe != " ") {
    String[] interneEingabe2 = split(interneEingabe, ',');
    if (animieren == false) {// && shiftKey){
      if (counter < interneEingabe2.length) {
        switch(interneEingabe2[counter]) {
          case("U"): 
          eingabe = 'Q';
          break;
          case("U'"): 
          eingabe = 'A';
          break;
          case("u"): 
          eingabe = 'q';
          break;
          case("u'"): 
          eingabe = 'a';
          break;
          case("D"): 
          eingabe = 'W';
          break;
          case("D'"): 
          eingabe = 'S';
          break;
          case("d"): 
          eingabe = 'w';
          break;
          case("d'"): 
          eingabe = 's';
          break;
          case("R"): 
          eingabe = 'E';
          break;
          case("R'"): 
          eingabe = 'D';
          break;
          case("r"): 
          eingabe = 'e';
          break;
          case("r'"): 
          eingabe = 'd';
          break;
          case("L"): 
          eingabe = 'R';
          break;
          case("L'"): 
          eingabe = 'F';
          break;
          case("l"): 
          eingabe = 'r';
          break;
          case("l'"): 
          eingabe = 'f';
          break;
          case("F"): 
          eingabe = 'T';
          break;
          case("F'"): 
          eingabe = 'G';
          break;
          case("f"): 
          eingabe = 't';
          break;
          case("f'"): 
          eingabe = 'g';
          break;
          case("B"): 
          eingabe = 'Z';
          break;
          case("B'"): 
          eingabe = 'H';
          break;
          case("b"): 
          eingabe = 'z';
          break;
          case("b'"): 
          eingabe = 'h';
          break;
        }
        //print(interneEingabe2[counter] + ",");
        counter++;
      } else {
        counter = 0;
        interneEingabe = " ";
      }
    }
  }
}

String unnoetigesWegMachen(String reingegeben) {

  String[] lolReturn = split(reingegeben, ",");
  String currentString = "  ", toCheck = "  ", currentString2 = "  ", returnString = "";
  int stringLaenge = 0;

  for (int i = 0; i < lolReturn.length; i++) {
    if (i < lolReturn.length-1) {
      currentString = lolReturn[i];
      currentString2 = lolReturn[i];
      toCheck = lolReturn[i+1];
    }
    stringLaenge = currentString.length();
    if (stringLaenge == 1) {
      currentString += "'";
    } else if (stringLaenge == 2) {
      currentString = currentString.substring(0, 1);
    }
    if (toCheck.equals(currentString)) {
      lolReturn[i] = "X";
      lolReturn[i+1] = "X";
    }
    if (i < lolReturn.length-1 && currentString2.equals(lolReturn[i+1]) && currentString2.equals(lolReturn[i+2]) && currentString2.equals(lolReturn[i+3])) {
      lolReturn[i] = "X";
      lolReturn[i+1] = "X";
      lolReturn[i+2] = "X";
      lolReturn[i+3] = "X";
    } else if (i < lolReturn.length-1 && currentString2.equals(lolReturn[i+1]) && currentString2.equals(lolReturn[i+2])) {
      lolReturn[i] = currentString;
      lolReturn[i+1] = "X";
      lolReturn[i+2] = "X";
    }
  }

  for (int j = 0; j < lolReturn.length; j++) {
    if (!(lolReturn[j].equals("X") || lolReturn[j].equals("X'"))) {
      returnString += lolReturn[j];
      returnString += ",";
    }
  }
  return returnString;
}

String scrambeln() {
  String[] a = {"U", "U'", "D", "D'", "R", "R'", "L", "L'", "F", "F'", "B", "B'"};
  String toReturn = "";
  for (int i = 0; i < 25; i++) {
    toReturn += a[int(random(12))];
    toReturn += ",";
  }
  return toReturn;
}
