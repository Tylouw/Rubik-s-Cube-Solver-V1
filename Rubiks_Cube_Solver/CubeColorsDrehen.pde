int[][] Gelb(String a, int[][] cubeColorstemp) {
  int[] tempColors = new int[33];

  //tempColors mit aktuellen Farben für die Drehung befüllen
  // Gelbe Seite
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempColors[i*3 + j] = cubeColorstemp[j][i+6];
    }
  }
  // Rote Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+9] = cubeColorstemp[i][12];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+21] = cubeColorstemp[i][13];
  }
  // Grüne Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+12] = cubeColorstemp[i][3];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+24] = cubeColorstemp[i][4];
  }
  // Orange Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+15] = cubeColorstemp[i][15];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+27] = cubeColorstemp[i][16];
  }
  // Blaue Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+18] = cubeColorstemp[i][9];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+30] = cubeColorstemp[i][10];
  }
  if (a == "U") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+6] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][9] = tempColors[i+9];
    }
    // Blau auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][15] = tempColors[i+18];
    }
    // Orange auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][3] = tempColors[i+15];
    }
    // Grün auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][12] = tempColors[i+12];
    }
  } else if (a == "u") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+6] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][9] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][10] = tempColors[i+21];
    }
    // Blau auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][15] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][16] = tempColors[i+30];
    }
    // Orange auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][3] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][4] = tempColors[i+27];
    }
    // Grün auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][12] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][13] = tempColors[i+24];
    }
  } else if (a == "U'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+5] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][3] = tempColors[i+9];
    }
    // Grün auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][15] = tempColors[i+12];
    }
    // Orange auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][9] = tempColors[i+15];
    }
    // Blau auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][12] = tempColors[i+18];
    }
  } else if (a == "u'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+5] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][3] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][4] = tempColors[i+21];
    }
    // Grün auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][15] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][16] = tempColors[i+24];
    }
    // Orange auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][9] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][10] = tempColors[i+27];
    }
    // Blau auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][12] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][13] = tempColors[i+30];
    }
  }
  return cubeColorstemp;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int[][] Weiss(String a, int[][] cubeColorstemp) {
  int[] tempColors = new int[33];

  //tempColors mit aktuellen Farben für die Drehung befüllen
  // Weiße Seite
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempColors[i*3 + j] = cubeColorstemp[j][i];
    }
  }
  // Rote Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+9] = cubeColorstemp[i][14];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+21] = cubeColorstemp[i][13];
  }
  // Grüne Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+12] = cubeColorstemp[i][5];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+24] = cubeColorstemp[i][4];
  }
  // Orange Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+15] = cubeColorstemp[i][17];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+27] = cubeColorstemp[i][16];
  }
  // Blaue Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+18] = cubeColorstemp[i][11];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+30] = cubeColorstemp[i][10];
  }
  if (a == "D") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][5] = tempColors[i+9];
    }
    // Grün auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][17] = tempColors[i+12];
    }
    // Orange auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][11] = tempColors[i+15];
    }
    // Blau auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][14] = tempColors[i+18];
    }
  } else if (a == "d") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][5] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][4] = tempColors[i+21];
    }
    // Grün auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][17] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][16] = tempColors[i+24];
    }
    // Orange auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][11] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][10] = tempColors[i+27];
    }
    // Blau auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][14] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][13] = tempColors[i+30];
    }
  } else if (a == "D'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j-1] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][11] = tempColors[i+9];
    }
    // Blau auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][17] = tempColors[i+18];
    }
    // Orange auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][5] = tempColors[i+15];
    }
    // Grün auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][14] = tempColors[i+12];
    }
  } else if (a == "d'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j-1] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][11] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][10] = tempColors[i+21];
    }
    // Blau auf Orange
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][17] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][16] = tempColors[i+30];
    }
    // Orange auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][5] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][4] = tempColors[i+27];
    }
    // Grün auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][14] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][13] = tempColors[i+24];
    }
  }
  return cubeColorstemp;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int[][] Gruen(String a, int[][] cubeColorstemp) {
  int[] tempColors = new int[33];

  //tempColors mit aktuellen Farben für die Drehung befüllen
  // Grüne Seite
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempColors[i*3 + j] = cubeColorstemp[j][i+3];
    }
  }
  // Rote Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+9] = cubeColorstemp[2][i+12];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+21] = cubeColorstemp[1][i+12];
  }
  // Gelbe Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+12] = cubeColorstemp[2][i+6];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+24] = cubeColorstemp[1][i+6];
  }
  // Orange Seite
  for (int i = 3; i > 0; i--) {
    tempColors[(3-i)+15] = cubeColorstemp[0][i+14];
  }
  for (int i = 3; i > 0; i--) {
    tempColors[(3-i)+27] = cubeColorstemp[1][i+14];
  }
  // Weiße Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+18] = cubeColorstemp[2][i];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+30] = cubeColorstemp[1][i];
  }
  if (a == "R") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+3] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+6] = tempColors[i+9];
    }
    // Gelb auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+14] = tempColors[(3-i)+12];
    }
    // Orange auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i] = tempColors[i+15];
    }
    // Weiß auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+12] = tempColors[i+18];
    }
  } else if (a == "r") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+3] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+6] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+6] = tempColors[i+21];
    }
    // Gelb auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+14] = tempColors[(3-i)+12];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+14] = tempColors[(3-i)+24];
    }
    // Orange auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i] = tempColors[i+27];
    }
    // Weiß auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+12] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+12] = tempColors[i+30];
    }
  } else if (a == "R'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+2] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i] = tempColors[i+9];
    }
    // Weiß auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+14] = tempColors[(3-i)+18];
    }
    // Orange auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+6] = tempColors[i+15];
    }
    // Gelb auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+12] = tempColors[i+12];
    }
  } else if (a == "r'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+2] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i] = tempColors[i+21];
    }
    // Weiß auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+14] = tempColors[(3-i)+18];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+14] = tempColors[(3-i)+30];
    }
    // Orange auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+6] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+6] = tempColors[i+27];
    }
    // Gelb auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+12] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+12] = tempColors[i+24];
    }
  }
  return cubeColorstemp;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int[][] Blau(String a, int[][] cubeColorstemp) {
  int[] tempColors = new int[33];

  //tempColors mit aktuellen Farben für die Drehung befüllen
  // Blaue Seite
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempColors[i*3 + j] = cubeColorstemp[j][i+9];
    }
  }
  // Rote Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+9] = cubeColorstemp[0][i+12];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+21] = cubeColorstemp[1][i+12];
  }
  // Gelbe Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+12] = cubeColorstemp[0][i+6];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+24] = cubeColorstemp[1][i+6];
  }
  // Orange Seite
  for (int i = 3; i > 0; i--) {
    tempColors[(3-i)+15] = cubeColorstemp[2][i+14];
  }
  for (int i = 3; i > 0; i--) {
    tempColors[(3-i)+27] = cubeColorstemp[1][i+14];
  }
  // Weiße Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+18] = cubeColorstemp[0][i];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+30] = cubeColorstemp[1][i];
  }
  if (a == "L") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+9] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i] = tempColors[i+9];
    }
    // Weiß auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+14] = tempColors[(3-i)+18];
    }
    // Orange auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+6] = tempColors[i+15];
    }
    // Gelb auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+12] = tempColors[i+12];
    }
  } else if (a == "l") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+9] = tempColors[((3-i)*3) + j];
      }
    }
    // Rot auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i] = tempColors[i+21];
    }
    // Weiß auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+14] = tempColors[(3-i)+18];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+14] = tempColors[(3-i)+30];
    }
    // Orange auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+6] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+6] = tempColors[i+27];
    }
    // Gelb auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+12] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+12] = tempColors[i+24];
    }
  } else if (a == "L'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+8] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+6] = tempColors[i+9];
    }
    // Gelb auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+14] = tempColors[(3-i)+12];
    }
    // Orange auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i] = tempColors[i+15];
    }
    // Weiß auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+12] = tempColors[i+18];
    }
  } else if (a == "l'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+8] = tempColors[(i*3) + (3-j)];
      }
    }
    // Rot auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+6] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+6] = tempColors[i+21];
    }
    // Gelb auf Orange
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+14] = tempColors[(3-i)+12];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+14] = tempColors[(3-i)+24];
    }
    // Orange auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i] = tempColors[i+27];
    }
    // Weiß auf Rot
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+12] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+12] = tempColors[i+30];
    }
  }
  return cubeColorstemp;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int[][] Rot(String a, int[][] cubeColorstemp) {
  int[] tempColors = new int[33];

  //tempColors mit aktuellen Farben für die Drehung befüllen
  // Rote Seite
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempColors[i*3 + j] = cubeColorstemp[j][i+12];
    }
  }
  // Grüne Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+9] = cubeColorstemp[0][i+3];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+21] = cubeColorstemp[1][i+3];
  }
  // Gelbe Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+12] = cubeColorstemp[i][8];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+24] = cubeColorstemp[i][7];
  }
  // Blaue Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+15] = cubeColorstemp[2][i+9];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+27] = cubeColorstemp[1][i+9];
  }
  // Weiße Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+18] = cubeColorstemp[i][0];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+30] = cubeColorstemp[i][1];
  }
  if (a == "F") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+12] = tempColors[((3-i)*3) + j];
      }
    }
    // Gelb auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+3] = tempColors[i+12];
    }
    // Grün auf Weiß
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][0] = tempColors[(3-i)+9];
    }
    // Weiß auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+9] = tempColors[i+18];
    }
    // Blau auf Gelb
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][8] = tempColors[(3-i)+15];
    }
  } else if (a == "f") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+12] = tempColors[((3-i)*3) + j];
      }
    }
    // Gelb auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+3] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+3] = tempColors[i+24];
    }
    // Grün auf Weiß
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][0] = tempColors[(3-i)+9];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][1] = tempColors[(3-i)+21];
    }
    // Weiß auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+9] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+9] = tempColors[i+30];
    }
    // Blau auf Gelb
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][8] = tempColors[(3-i)+15];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][7] = tempColors[(3-i)+27];
    }
  } else if (a == "F'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+11] = tempColors[(i*3) + (3-j)];
      }
    }
    // Gelb auf Blau
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+8] = tempColors[(3-i)+12];
    }
    // Blau auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][0] = tempColors[i+15];
    }
    // Weiß auf Grün
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+2] = tempColors[(3-i)+18];
    }
    // Grün auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][8] = tempColors[i+9];
    }
  } else if (a == "f'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+11] = tempColors[(i*3) + (3-j)];
      }
    }
    // Gelb auf Blau
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+8] = tempColors[(3-i)+12];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+8] = tempColors[(3-i)+24];
    }
    // Blau auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][0] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][1] = tempColors[i+27];
    }
    // Weiß auf Grün
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+2] = tempColors[(3-i)+18];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+2] = tempColors[(3-i)+30];
    }
    // Grün auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][8] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][7] = tempColors[i+21];
    }
  }
  return cubeColorstemp;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int[][] Orange(String a, int[][] cubeColorstemp) {
  int[] tempColors = new int[33];

  //tempColors mit aktuellen Farben für die Drehung befüllen
  // Rote Seite
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      tempColors[i*3 + j] = cubeColorstemp[j][i+15];
    }
  }
  // Gelbe Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+9] = cubeColorstemp[i][6];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+21] = cubeColorstemp[i][7];
  }
  // Grüne Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+12] = cubeColorstemp[2][i+3];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+24] = cubeColorstemp[1][i+3];
  }
  // Weiße Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+15] = cubeColorstemp[i][2];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+27] = cubeColorstemp[i][1];
  }
  // Blaue Seite
  for (int i = 0; i < 3; i++) {
    tempColors[i+18] = cubeColorstemp[0][i+9];
  }
  for (int i = 0; i < 3; i++) {
    tempColors[i+30] = cubeColorstemp[1][i+9];
  }
  if (a == "B") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+15] = tempColors[((3-i)*3) + j];
      }
    }
    // Gelb auf Blau
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+8] = tempColors[(3-i)+9];
    }
    // Blau auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][2] = tempColors[i+18];
    }
    // Weiß auf Grün
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+2] = tempColors[(3-i)+15];
    }
    // Grün auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][6] = tempColors[i+12];
    }
  } else if (a == "b") {
    //Hier kommt die Drehung
    for (int i = 3; i > 0; i--) {
      for (int j = 0; j < 3; j++) {
        cubeColorstemp[i-1][j+15] = tempColors[((3-i)*3) + j];
      }
    }
    // Gelb auf Blau
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[0][i+8] = tempColors[(3-i)+9];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+8] = tempColors[(3-i)+21];
    }
    // Blau auf Weiß
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][2] = tempColors[i+18];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][1] = tempColors[i+30];
    }
    // Weiß auf Grün
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[2][i+2] = tempColors[(3-i)+15];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[1][i+2] = tempColors[(3-i)+27];
    }
    // Grün auf Gelb
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][6] = tempColors[i+12];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[i][7] = tempColors[i+24];
    }
  } else if (a == "B'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+14] = tempColors[(i*3) + (3-j)];
      }
    }
    // Gelb auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+3] = tempColors[i+9];
    }
    // Grün auf Weiß
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][2] = tempColors[(3-i)+12];
    }
    // Weiß auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+9] = tempColors[i+15];
    }
    // Blau auf Gelb
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][6] = tempColors[(3-i)+18];
    }
  } else if (a == "b'") {
    //Hier kommt die Drehung
    for (int i = 0; i < 3; i++) {
      for (int j = 3; j > 0; j--) {
        cubeColorstemp[i][j+14] = tempColors[(i*3) + (3-j)];
      }
    }
    // Gelb auf Grün
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[2][i+3] = tempColors[i+9];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+3] = tempColors[i+21];
    }
    // Grün auf Weiß
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][2] = tempColors[(3-i)+12];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][1] = tempColors[(3-i)+24];
    }
    // Weiß auf Blau
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[0][i+9] = tempColors[i+15];
    }
    for (int i = 0; i < 3; i++) {
      cubeColorstemp[1][i+9] = tempColors[i+27];
    }
    // Blau auf Gelb
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][6] = tempColors[(3-i)+18];
    }
    for (int i = 3; i > 0; i--) {
      cubeColorstemp[i-1][7] = tempColors[(3-i)+30];
    }
  }
  return cubeColorstemp;
}
