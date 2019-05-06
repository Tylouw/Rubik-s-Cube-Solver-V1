float rotation = 0;
float eyeX, eyeY, eyeZ;
float eye_distance = 300;
float eye_yaw = 0;
float eye_pitch = 0;

void update_eye() {
  eyeY = eye_distance*sin(eye_pitch);
  float eyeD = eye_distance*cos(eye_pitch);
  eyeX = eyeD*sin(eye_yaw);
  eyeZ = eyeD*cos(eye_yaw);
  camera(eyeX, eyeY, eyeZ, 0, 0, 0, 0, 1, 0);
}

void mouseDragged() {
  eye_yaw -= (mouseX - pmouseX)*PI/360.0;// + anfangsY2;
  eye_pitch -= (mouseY - pmouseY)*PI/360.0;// + anfangsX2;
  if (eye_pitch >radians(89))eye_pitch =radians(89.99);
  if (eye_pitch <radians(-89))eye_pitch =radians(-89.99);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  eye_distance += e * 20;
}

void cubeColorDefinitions() {
  // Weiße Seite
  cubeColors[0][0] = weissNum; cubeColors[1][0] = weissNum; cubeColors[2][0] = weissNum;
  cubeColors[0][1] = weissNum; cubeColors[1][1] = weissNum; cubeColors[2][1] = weissNum;
  cubeColors[0][2] = weissNum; cubeColors[1][2] = weissNum; cubeColors[2][2] = weissNum;

  // Grüne Seite
  cubeColors[0][3] = gruenNum; cubeColors[1][3] = gruenNum; cubeColors[2][3] = gruenNum;
  cubeColors[0][4] = gruenNum; cubeColors[1][4] = gruenNum; cubeColors[2][4] = gruenNum;
  cubeColors[0][5] = gruenNum; cubeColors[1][5] = gruenNum; cubeColors[2][5] = gruenNum;

  // Gelbe Seite
  cubeColors[0][6] = gelbNum; cubeColors[1][6] = gelbNum; cubeColors[2][6] = gelbNum;
  cubeColors[0][7] = gelbNum; cubeColors[1][7] = gelbNum; cubeColors[2][7] = gelbNum;
  cubeColors[0][8] = gelbNum; cubeColors[1][8] = gelbNum; cubeColors[2][8] = gelbNum;

  // Blaue Seite
  cubeColors[0][9] = blauNum; cubeColors[1][9] = blauNum; cubeColors[2][9] = blauNum;
  cubeColors[0][10] = blauNum; cubeColors[1][10] = blauNum; cubeColors[2][10] = blauNum;
  cubeColors[0][11] = blauNum; cubeColors[1][11] = blauNum; cubeColors[2][11] = blauNum;

  // Rote Seite
  cubeColors[0][12] = rotNum; cubeColors[1][12] = rotNum; cubeColors[2][12] = rotNum;
  cubeColors[0][13] = rotNum; cubeColors[1][13] = rotNum; cubeColors[2][13] = rotNum;
  cubeColors[0][14] = rotNum; cubeColors[1][14] = rotNum; cubeColors[2][14] = rotNum;

  // Orange Seite
  cubeColors[0][15] = orangeNum; cubeColors[1][15] = orangeNum; cubeColors[2][15] = orangeNum;
  cubeColors[0][16] = orangeNum; cubeColors[1][16] = orangeNum; cubeColors[2][16] = orangeNum;
  cubeColors[0][17] = orangeNum; cubeColors[1][17] = orangeNum; cubeColors[2][17] = orangeNum;
}

void copy_CubeColors_To_CubeColorsIntern() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 18; j++) {
      cubeColorsIntern[i][j] = cubeColors[i][j];
    }
  }
}
void copy_CubeColorsIntern_to_CubeColorsPLL() {
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 18; j++) {
      cubeColorsPLL[i][j] = cubeColorsIntern[i][j];
    }
  }
}

boolean cubegewendet = false, cubegewendet2 = false;
void cubeSeitenScannen() {

  if (welcheSeiteZuScannen == 1) {

    if (millis() - prevMillisScannen > 500) {
      for (int j = 0; j < 3; j++) {
        for (int k = 0; k < 3; k++) {
          cubeColors[k][j+6] = colorSafe[j*3 + k];
        }
      }
      welcheSeiteZuScannen++;
      prevMillisScannen = millis();
    }
  }


  if (welcheSeiteZuScannen == 2) {

    if (!cubegewendet) {
      port.write("a" + 4 + "\n"); // Cube wenden
      cubegewendet = true;
    }
    if (millis() - prevMillisScannen > 1500) {
      for (int j = 0; j < 3; j++) {
        for (int k = 3; k > 0; k--) {
          cubeColors[(3-k)][j+3] = colorSafe[(k*3 - 3) + j];
        }
      }
      cubegewendet = false;
      welcheSeiteZuScannen++;
      prevMillisScannen = millis();
    }
  }

  if (welcheSeiteZuScannen == 3) {

    if (!cubegewendet) {
      port.write("a" + 4 + "\n"); // Cube wenden
      cubegewendet = true;
    }
    if (millis() - prevMillisScannen > 1500) {
      for (int j = 0; j < 3; j++) {
        for (int k = 0; k < 3; k++) {
          cubeColors[k][j] = colorSafe[8-(j*3 + k)];
        }
      }
      cubegewendet = false;
      welcheSeiteZuScannen++;
      prevMillisScannen = millis();
    }
  }


  if (welcheSeiteZuScannen == 4) {

    if (!cubegewendet) {
      port.write("a" + 4 + "\n"); // Cube wenden
      cubegewendet = true;
    }
    if (millis() - prevMillisScannen > 1500) {
      for (int j = 0; j < 3; j++) {
        for (int k = 0; k < 3; k++) {
          cubeColors[k][j+9] = colorSafe[(k*3+2)-j];
        }
      }
      cubegewendet = false;
      welcheSeiteZuScannen++;
      prevMillisScannen = millis();
    }
  }


  if (welcheSeiteZuScannen == 5) {
    if (!cubegewendet) {
      port.write("a" + 1 + "\n"); // Cube wenden
      cubegewendet = true;
      prevMillisScannen = millis();
    }
    if (!cubegewendet2 && (millis() - prevMillisScannen > 1000)) {
      port.write("a" + 4 + "\n"); // Cube wenden
      cubegewendet2 = true;
    }
    if (millis() - prevMillisScannen > 2500) {
      for (int j = 0; j < 3; j++) {
        for (int k = 0; k < 3; k++) {
          cubeColors[k][j+15] = colorSafe[8-(j*3 + k)];
        }
      }
      cubegewendet = false;
      cubegewendet2 = false;
      welcheSeiteZuScannen++;
      prevMillisScannen = millis();
    }
  }


  if (welcheSeiteZuScannen == 6) {
    if (!cubegewendet) {
      port.write("a" + 4 + "\n"); // Cube wenden
      cubegewendet = true;
      prevMillisScannen = millis();
    }
    if (!cubegewendet2 && (millis() - prevMillisScannen > 1000)) {
      port.write("a" + 4 + "\n"); // Cube wenden
      cubegewendet2 = true;
    }
    if (millis() - prevMillisScannen > 2500) {
      for (int j = 0; j < 3; j++) {
        for (int k = 0; k < 3; k++) {
          cubeColors[k][j+12] = colorSafe[8-(j*3 + k)];
        }
      }
      cubegewendet = false;
      cubegewendet2 = false;
      welcheSeiteZuScannen++;
      prevMillisScannen = millis();
      gescannt = true;
      direktNachScannen();
    }
  }
}

void direktNachScannen() {
  roboCubeColors[0] = cubeColors[1][13]; 
  roboCubeColors[1] = cubeColors[1][16]; 
  roboCubeColors[2] = cubeColors[1][7]; 
  roboCubeColors[3] = cubeColors[1][10]; 
  roboCubeColors[4] = cubeColors[1][1]; 
  roboCubeColors[5] = cubeColors[1][4];
  if (cubeColors[1][7] == gelbNum) {  // Gelb nach oben bringen
  } else if (cubeColors[1][13] == gelbNum) {
    cubeColors = Gruen("r", cubeColors);
    cubeColors = Blau("L'", cubeColors);
  } else if (cubeColors[1][4] == gelbNum) {
    cubeColors =  Rot("f'", cubeColors);
    cubeColors = Orange("B", cubeColors);
  } else if (cubeColors[1][16] == gelbNum) {
    cubeColors = Gruen("r'", cubeColors);
    cubeColors = Blau("L", cubeColors);
  } else if (cubeColors[1][10] == gelbNum) {
    cubeColors =  Rot("f", cubeColors);
    cubeColors = Orange("B'", cubeColors);
  } else if (cubeColors[1][1] == gelbNum) {
    cubeColors =  Rot("f'", cubeColors);
    cubeColors = Orange("B", cubeColors);
    cubeColors =  Rot("f'", cubeColors);
    cubeColors = Orange("B", cubeColors);
  }

  if (cubeColors[1][13] == rotNum) {  // Rot nach vorne bringen
  } else if (cubeColors[1][4] == rotNum) {
    cubeColors = Gelb("u", cubeColors);
    cubeColors = Weiss("D'", cubeColors);
  } else if (cubeColors[1][16] == rotNum) {
    cubeColors = Gelb("u", cubeColors);
    cubeColors = Weiss("D'", cubeColors);
    cubeColors = Gelb("u", cubeColors);
    cubeColors = Weiss("D'", cubeColors);
  } else if (cubeColors[1][10] == rotNum) {
    cubeColors = Gelb("u'", cubeColors);
    cubeColors = Weiss("D", cubeColors);
  }
  eingabe = 'L';
}


String CubeColors_to_TPAdef() {
  String toReturn = "";
  int[] colorOrder = {6, 3, 12, 0, 9, 15};
  for (int k = 0; k < 6; k++) {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (cubeColors[j][i+colorOrder[k]] == gelbNum) {
          toReturn += "U";
        } else if (cubeColors[j][i+colorOrder[k]] == gruenNum) {
          toReturn += "R";
        } else if (cubeColors[j][i+colorOrder[k]] == rotNum) {
          toReturn += "F";
        } else if (cubeColors[j][i+colorOrder[k]] == weissNum) {
          toReturn += "D";
        } else if (cubeColors[j][i+colorOrder[k]] == blauNum) {
          toReturn += "L";
        } else if (cubeColors[j][i+colorOrder[k]] == orangeNum) {
          toReturn += "B";
        }
      }
    }
  }

  return toReturn;
}

String TPAloesung_to_internLoesung(String a) {
  String toReturn = "";
  String[] b = split(a, ", ");
  for (int i = 0; i < b.length; i++) {
    if (b[i].equals("U2")) {
      toReturn += "U,U,";
    } else if (b[i].equals("R2")) {
      toReturn += "R,R,";
    } else if (b[i].equals("F2")) {
      toReturn += "F,F,";
    } else if (b[i].equals("D2")) {
      toReturn += "D,D,";
    } else if (b[i].equals("L2")) {
      toReturn += "L,L,";
    } else if (b[i].equals("B2")) {
      toReturn += "B,B,";
    } else {
      toReturn += b[i];
      toReturn += ",";
    }
  }
  return toReturn;
}
