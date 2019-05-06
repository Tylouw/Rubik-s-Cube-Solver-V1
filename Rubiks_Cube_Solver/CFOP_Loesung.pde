
void CFOP() { 
  int anzDrehungen = 6;
  int[] nums = new int[anzDrehungen];
  String[] a = {"q", "U", "U'", "D", "D'", "R", "R'", "L", "L'", "F", "F'", "B", "B'"};
  String b = "";
  int movesRekord = 500;

  //while(movesRekord > 70){                // Hier packt das programm 7000 mal andere Moves vor der Lösung und guckt welche Lösung des Würfels am kürzesten ist, die wird dann zwischengespeichert in "besteLosung"
  for (int u = 0; u < 2000; u++) {
    copy_CubeColors_To_CubeColorsIntern();
    if (nums[0] > 12) {
      for (int j = 0; j < anzDrehungen; j++) {
        if (nums[j] > 12) {
          if (j<anzDrehungen-1) {
            nums[j+1]++;
            nums[j] = 0;
          }
        }
      }
    }
    b = "";
    for (int l = 0; l < anzDrehungen; l++) {
      if (nums[l] != 0) {
        b += a[nums[l]];
        b += ",";
      }
    }                        // Ab hier wurde der Zug b generiert, der dann vor ausgeführt wird in "algoexe(b);". Dann wird die Lösung für den Würfel mit dem Move "b" vorher berechnet und am ende wird die Lösung aus "finalresult" nach die "b" moves
    algoexe(b);              // rangehängt und geguckt wie lang das ganze Manöver ist. Das wird 7000 mal ausgeführt und die kürzeste Lösung wird gespeichert und am Ende weiter gegeben.
    white_Cross();
    F2L();
    OLL();
    PLL();
    //finalresult = unnoetigesWegMachen(finalresult);
    b += finalresult;
    if (movesRekord > laengeLoesungBerechnen(b)) {
      movesRekord = laengeLoesungBerechnen(b);
      besteLoesung = b;
    }
    finalresult = "";
    nums[0]++;
    //println("schnellste Lösung " + movesRekord);
  }
}




void white_Cross() {

  int[] eckenZuChecken = {rotNum, blauNum, orangeNum, gruenNum};

  //jede Ecke suchen und richtig einsetzen
  while (!(cubeColorsIntern[2][1] == weissNum && cubeColorsIntern[1][5] == gruenNum &&
    cubeColorsIntern[1][0] == weissNum && cubeColorsIntern[1][14] == rotNum &&
    cubeColorsIntern[0][1] == weissNum && cubeColorsIntern[1][11] == blauNum &&
    cubeColorsIntern[1][2] == weissNum && cubeColorsIntern[1][17] == orangeNum)) {
    print("suche nach white cross");
    //algoexe("U,");
    for (int i = 0; i < 4; i++) {
      //Checken ob das Kreuz vorhanden ist
      if (cubeColorsIntern[2][1] == weissNum && cubeColorsIntern[1][5] == gruenNum &&
        cubeColorsIntern[1][0] == weissNum && cubeColorsIntern[1][14] == rotNum &&
        cubeColorsIntern[0][1] == weissNum && cubeColorsIntern[1][11] == blauNum &&
        cubeColorsIntern[1][2] == weissNum && cubeColorsIntern[1][17] == orangeNum) {
        break;
      }
      find_Edge_and_bring_to_top(eckenZuChecken[i]);
      orient_Edge_and_turn_in_right_Position_at_bottom(eckenZuChecken[i]);
    }
  }
  println(" " + laengeLoesungBerechnen(finalresult));
}

void find_Edge_and_bring_to_top(int farbe) {

  //Eckstücke im ersten Layer mit weiß nach unten
  if (cubeColorsIntern[1][0] == weissNum && cubeColorsIntern[1][14] == farbe) {
    algoexe("F,F,");
    finalresult += "F,F,";
  } else if (cubeColorsIntern[2][1] == weissNum && cubeColorsIntern[1][5] == farbe) {
    algoexe("R,R,");
    finalresult += "R,R,";
  } else if (cubeColorsIntern[1][2] == weissNum && cubeColorsIntern[1][17] == farbe) {
    algoexe("B,B,");
    finalresult += "B,B,";
  } else if (cubeColorsIntern[0][1] == weissNum && cubeColorsIntern[1][11] == farbe) {
    algoexe("L,L,");
    finalresult += "L,L,";
  }

  //Eckstücke im ersten Layer mit weiß nach außen
  else if (cubeColorsIntern[1][0] == farbe && cubeColorsIntern[1][14] == weissNum) {
    algoexe("F',R,U,R',");
    finalresult += "F',R,U,R',";
  } else if (cubeColorsIntern[2][1] == farbe && cubeColorsIntern[1][5] == weissNum) {
    algoexe("R,F',U',F,");
    finalresult += "R,F',U',F,";
  } else if (cubeColorsIntern[1][2] == farbe && cubeColorsIntern[1][17] == weissNum) {
    algoexe("B,R',U,R,");
    finalresult += "B,R',U,R,";
  } else if (cubeColorsIntern[0][1] == farbe && cubeColorsIntern[1][11] == weissNum) {
    algoexe("L',F,U,F',");
    finalresult += "L',F,U,F',";
  }

  //Eckstücke im zweiten Layer
  else if (cubeColorsIntern[2][13] == farbe && cubeColorsIntern[0][4] == weissNum) {
    algoexe("F',U',F,");
    finalresult += "F',U',F,";
  } else if (cubeColorsIntern[2][13] == weissNum && cubeColorsIntern[0][4] == farbe) {
    algoexe("R,U,R',");
    finalresult += "R,U,R',";
  } else if (cubeColorsIntern[2][4] == farbe && cubeColorsIntern[0][16] == weissNum) {
    algoexe("R',U,R,");
    finalresult += "R',U,R,";
  } else if (cubeColorsIntern[2][4] == weissNum && cubeColorsIntern[0][16] == farbe) {
    algoexe("B,U,B',");
    finalresult += "B,U,B',";
  } else if (cubeColorsIntern[2][16] == farbe && cubeColorsIntern[0][10] == weissNum) {
    algoexe("B',U,B,");
    finalresult += "B',U,B,";
  } else if (cubeColorsIntern[2][16] == weissNum && cubeColorsIntern[0][10] == farbe) {
    algoexe("L,U,L',");
    finalresult += "L,U,L',";
  } else if (cubeColorsIntern[2][10] == farbe && cubeColorsIntern[0][13] == weissNum) {
    algoexe("L',U,L,");
    finalresult += "L',U,L,";
  } else if (cubeColorsIntern[2][10] == weissNum && cubeColorsIntern[0][13] == farbe) {
    algoexe("F,U,F',");
    finalresult += "F,U,F',";
  }

  //Eckstücke im dritten Layer mit weiß nach außen
  else if (cubeColorsIntern[1][12] == weissNum && cubeColorsIntern[1][8] == farbe) {
    algoexe("F,R,U',R',F',");
    finalresult += "F,R,U',R',F',";
  } else if (cubeColorsIntern[1][3] == weissNum && cubeColorsIntern[2][7] == farbe) {
    algoexe("R,B,U',B',R',");
    finalresult += "R,B,U',B',R',";
  } else if (cubeColorsIntern[1][15] == weissNum && cubeColorsIntern[1][6] == farbe) {
    algoexe("B,L,U',L',B',");
    finalresult += "B,L,U',L',B',";
  } else if (cubeColorsIntern[1][9] == weissNum && cubeColorsIntern[0][7] == farbe) {
    algoexe("L,F,U',L',F',");
    finalresult += "L,F,U',L',F',";
  }
}

void orient_Edge_and_turn_in_right_Position_at_bottom(int farbe) {
  switch(farbe) {
    case(2): 
    if (cubeColorsIntern[2][7] == weissNum && cubeColorsIntern[1][3] == gruenNum) {
      algoexe("R,R,");
      finalresult += "R,R,";
    } else if (cubeColorsIntern[1][6] == weissNum && cubeColorsIntern[1][15] == gruenNum) {
      algoexe("U,R,R,");
      finalresult += "U,R,R,";
    } else if (cubeColorsIntern[0][7] == weissNum && cubeColorsIntern[1][9] == gruenNum) {
      algoexe("U,U,R,R,");
      finalresult += "U,U,R,R,";
    } else if (cubeColorsIntern[1][8] == weissNum && cubeColorsIntern[1][12] == gruenNum) {
      algoexe("U',R,R,");
      finalresult += "U',R,R,";
    }
    break;
    case(3): 
    if (cubeColorsIntern[2][7] == weissNum && cubeColorsIntern[1][3] == rotNum) {
      algoexe("U,F,F,");
      finalresult += "U,F,F,";
    } else if (cubeColorsIntern[1][6] == weissNum && cubeColorsIntern[1][15] == rotNum) {
      algoexe("U,U,F,F,");
      finalresult += "U,U,F,F,";
    } else if (cubeColorsIntern[0][7] == weissNum && cubeColorsIntern[1][9] == rotNum) {
      algoexe("U',F,F,");
      finalresult += "U',F,F,";
    } else if (cubeColorsIntern[1][8] == weissNum && cubeColorsIntern[1][12] == rotNum) {
      algoexe("F,F,");
      finalresult += "F,F,";
    }
    break;
    case(4): 
    if (cubeColorsIntern[2][7] == weissNum && cubeColorsIntern[1][3] == blauNum) {
      algoexe("U,U,L,L,");
      finalresult += "U,U,L,L,";
    } else if (cubeColorsIntern[1][6] == weissNum && cubeColorsIntern[1][15] == blauNum) {
      algoexe("U',L,L,");
      finalresult += "U',L,L,";
    } else if (cubeColorsIntern[0][7] == weissNum && cubeColorsIntern[1][9] == blauNum) {
      algoexe("L,L,");
      finalresult += "L,L,";
    } else if (cubeColorsIntern[1][8] == weissNum && cubeColorsIntern[1][12] == blauNum) {
      algoexe("U,L,L,");
      finalresult += "U,L,L,";
    }
    break;
    case(5): 
    if (cubeColorsIntern[2][7] == weissNum && cubeColorsIntern[1][3] == orangeNum) {
      algoexe("U',B,B,");
      finalresult += "U',B,B,";
    } else if (cubeColorsIntern[1][6] == weissNum && cubeColorsIntern[1][15] == orangeNum) {
      algoexe("B,B,");
      finalresult += "B,B,";
    } else if (cubeColorsIntern[0][7] == weissNum && cubeColorsIntern[1][9] == orangeNum) {
      algoexe("U,B,B,");
      finalresult += "U,B,B,";
    } else if (cubeColorsIntern[1][8] == weissNum && cubeColorsIntern[1][12] == orangeNum) {
      algoexe("U,U,B,B,");
      finalresult += "U,U,B,B,";
    }
    break;
  }
}
void algoexe(String a) {
  String[] b = split(a, ",");
  for (int i = 0; i < b.length; i++) {
    if (b[i].equals("U")) cubeColorsIntern = Gelb("U", cubeColorsIntern);
    else if (b[i].equals("U'")) cubeColorsIntern = Gelb("U'", cubeColorsIntern);
    else if (b[i].equals("u")) cubeColorsIntern = Gelb("u", cubeColorsIntern);
    else if (b[i].equals("u'")) cubeColorsIntern = Gelb("u'", cubeColorsIntern);

    else if (b[i].equals("D")) cubeColorsIntern = Weiss("D", cubeColorsIntern);
    else if (b[i].equals("D'")) cubeColorsIntern = Weiss("D'", cubeColorsIntern);
    else if (b[i].equals("d")) cubeColorsIntern = Weiss("d", cubeColorsIntern);
    else if (b[i].equals("d'")) cubeColorsIntern = Weiss("d'", cubeColorsIntern);

    else if (b[i].equals("R")) cubeColorsIntern = Gruen("R", cubeColorsIntern);
    else if (b[i].equals("R'")) cubeColorsIntern = Gruen("R'", cubeColorsIntern);
    else if (b[i].equals("r")) cubeColorsIntern = Gruen("r", cubeColorsIntern);
    else if (b[i].equals("r'")) cubeColorsIntern = Gruen("r'", cubeColorsIntern);

    else if (b[i].equals("L")) cubeColorsIntern = Blau("L", cubeColorsIntern);
    else if (b[i].equals("L'")) cubeColorsIntern = Blau("L'", cubeColorsIntern);
    else if (b[i].equals("l")) cubeColorsIntern = Blau("l", cubeColorsIntern);
    else if (b[i].equals("l'")) cubeColorsIntern = Blau("l'", cubeColorsIntern);

    else if (b[i].equals("F")) cubeColorsIntern = Rot("F", cubeColorsIntern);
    else if (b[i].equals("F'")) cubeColorsIntern = Rot("F'", cubeColorsIntern);
    else if (b[i].equals("f")) cubeColorsIntern = Rot("f", cubeColorsIntern);
    else if (b[i].equals("f'")) cubeColorsIntern = Rot("f'", cubeColorsIntern);

    else if (b[i].equals("B")) cubeColorsIntern = Orange("B", cubeColorsIntern);
    else if (b[i].equals("B'")) cubeColorsIntern = Orange("B'", cubeColorsIntern);
    else if (b[i].equals("b")) cubeColorsIntern = Orange("b", cubeColorsIntern);
    else if (b[i].equals("b'")) cubeColorsIntern = Orange("b'", cubeColorsIntern);
  }
}
void algoexePLL(String a) {
  String[] b = split(a, ",");
  for (int i = 0; i < b.length; i++) {
    if (b[i].equals("U")) cubeColorsPLL = Gelb("U", cubeColorsPLL);
    else if (b[i].equals("U'")) cubeColorsPLL = Gelb("U'", cubeColorsPLL);
    else if (b[i].equals("u")) cubeColorsPLL = Gelb("u", cubeColorsPLL);
    else if (b[i].equals("u'")) cubeColorsPLL = Gelb("u'", cubeColorsPLL);

    else if (b[i].equals("D")) cubeColorsPLL = Weiss("D", cubeColorsPLL);
    else if (b[i].equals("D'")) cubeColorsPLL = Weiss("D'", cubeColorsPLL);
    else if (b[i].equals("d")) cubeColorsPLL = Weiss("d", cubeColorsPLL);
    else if (b[i].equals("d'")) cubeColorsPLL = Weiss("d'", cubeColorsPLL);

    else if (b[i].equals("R")) cubeColorsPLL = Gruen("R", cubeColorsPLL);
    else if (b[i].equals("R'")) cubeColorsPLL = Gruen("R'", cubeColorsPLL);
    else if (b[i].equals("r")) cubeColorsPLL = Gruen("r", cubeColorsPLL);
    else if (b[i].equals("r'")) cubeColorsPLL = Gruen("r'", cubeColorsPLL);

    else if (b[i].equals("L")) cubeColorsPLL = Blau("L", cubeColorsPLL);
    else if (b[i].equals("L'")) cubeColorsPLL = Blau("L'", cubeColorsPLL);
    else if (b[i].equals("l")) cubeColorsPLL = Blau("l", cubeColorsPLL);
    else if (b[i].equals("l'")) cubeColorsPLL = Blau("l'", cubeColorsPLL);

    else if (b[i].equals("F")) cubeColorsPLL = Rot("F", cubeColorsPLL);
    else if (b[i].equals("F'")) cubeColorsPLL = Rot("F'", cubeColorsPLL);
    else if (b[i].equals("f")) cubeColorsPLL = Rot("f", cubeColorsPLL);
    else if (b[i].equals("f'")) cubeColorsPLL = Rot("f'", cubeColorsPLL);

    else if (b[i].equals("B")) cubeColorsPLL = Orange("B", cubeColorsPLL);
    else if (b[i].equals("B'")) cubeColorsPLL = Orange("B'", cubeColorsPLL);
    else if (b[i].equals("b")) cubeColorsPLL = Orange("b", cubeColorsPLL);
    else if (b[i].equals("b'")) cubeColorsPLL = Orange("b'", cubeColorsPLL);
  }
}

boolean wcross() {
  return cubeColorsIntern[2][1] == weissNum && cubeColorsIntern[1][5] == gruenNum &&
    cubeColorsIntern[1][0] == weissNum && cubeColorsIntern[1][14] == rotNum &&
    cubeColorsIntern[0][1] == weissNum && cubeColorsIntern[1][11] == blauNum &&
    cubeColorsIntern[1][2] == weissNum && cubeColorsIntern[1][17] == orangeNum;
}

void white_Cross_faster() {
  int anzDrehungen = 10;
  int[] nums = new int[anzDrehungen];
  long totaltrys = 0, prevMillis = millis();
  String[] a = {"q", "U", "U'", "D", "D'", "R", "R'", "L", "L'", "F", "F'", "B", "B'"};
  String b = "";
  println("suche nach Lösung für weißes Kreuz");
  while (!wcross()) {
    copy_CubeColors_To_CubeColorsIntern();
    if (nums[0] > 12) {
      for (int j = 0; j < anzDrehungen; j++) {
        if (nums[j] > 12) {
          if (j<anzDrehungen-1) {
            nums[j+1]++;
            nums[j] = 0;
          }
        }
      }
    }
    b = "";
    if (nums[anzDrehungen-1] == 12) break;
    for (int i = 0; i < anzDrehungen; i++) {
      if (nums[i] != 0) {
        b += a[nums[i]];
        b += ",";
      }
    }
    //print(nums[0] + " ");print(nums[1] + " ");print(nums[2] + " ");print(nums[3] + " ");print(nums[4] + " ");println(nums[5]);
    totaltrys++;
    algoexe(b);
    nums[0]++;
  }
  println(b +" "+ totaltrys + " Versuche in: " + ((millis() - prevMillis)/1000) + "s");
  finalresult = b;
}


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++    F2L Code
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


void F2L() {
  int[] eckeZuChecken = {rotNum, gruenNum, orangeNum, blauNum};
  int[] eckeZuChecken2 = {gruenNum, orangeNum, blauNum, rotNum};
  // Richtige Ecke suchen, sie nach oben holen, richitge Kante suchen, sie nach oben holen, zusammenbringen und einsetzen
  while (!(cubeColorsIntern[2][0] == weissNum && cubeColorsIntern[2][14] == rotNum && cubeColorsIntern[0][5] == gruenNum && // Weiß-Rot-Grüne Ecke
    cubeColorsIntern[0][0] == weissNum && cubeColorsIntern[0][14] == rotNum && cubeColorsIntern[2][11] == blauNum && // Weiß-Rot-Blaue Ecke
    cubeColorsIntern[0][2] == weissNum && cubeColorsIntern[0][11] == blauNum && cubeColorsIntern[2][17] == orangeNum && // Weiß-Blau-Orangene Ecke
    cubeColorsIntern[2][2] == weissNum && cubeColorsIntern[2][5] == gruenNum && cubeColorsIntern[0][17] == orangeNum && // Weiß-Grün-Orangene Ecke
    cubeColorsIntern[2][13] == rotNum && cubeColorsIntern[0][4] == gruenNum &&                                       // Rot-Grüne Kante
    cubeColorsIntern[2][4] == gruenNum && cubeColorsIntern[0][16] == orangeNum &&                                    // Grün-Orangene Kante
    cubeColorsIntern[2][16] == orangeNum && cubeColorsIntern[0][10] == blauNum &&                                    // Orange-Blaue Kante
    cubeColorsIntern[2][10] == blauNum && cubeColorsIntern[0][13] == rotNum)) {
    println("suche nach F2L Lösung");
    for (int i = 0; i < 4; i++) {
      //gucken ob die ersten zwei Layer schon ferig sind
      if (cubeColorsIntern[2][0] == weissNum && cubeColorsIntern[2][14] == rotNum && cubeColorsIntern[0][5] == gruenNum && // Weiß-Rot-Grüne Ecke
        cubeColorsIntern[0][0] == weissNum && cubeColorsIntern[0][14] == rotNum && cubeColorsIntern[2][11] == blauNum && // Weiß-Rot-Blaue Ecke
        cubeColorsIntern[0][2] == weissNum && cubeColorsIntern[0][11] == blauNum && cubeColorsIntern[2][17] == orangeNum && // Weiß-Blau-Orangene Ecke
        cubeColorsIntern[2][2] == weissNum && cubeColorsIntern[2][5] == gruenNum && cubeColorsIntern[0][17] == orangeNum && // Weiß-Grün-Orangene Ecke
        cubeColorsIntern[2][13] == rotNum && cubeColorsIntern[0][4] == gruenNum &&                                       // Rot-Grüne Kante
        cubeColorsIntern[2][4] == gruenNum && cubeColorsIntern[0][16] == orangeNum &&                                    // Grün-Orangene Kante
        cubeColorsIntern[2][16] == orangeNum && cubeColorsIntern[0][10] == blauNum &&                                    // Orange-Blaue Kante
        cubeColorsIntern[2][10] == blauNum && cubeColorsIntern[0][13] == rotNum) {                                        // Blau-Rote Kante
        break;
      } 
      ecke_suchen_und_nach_oben_bringen(eckeZuChecken[i], eckeZuChecken2[i]); //Die Ecke kommt immer oben links vorne(zu mir) hin ([0][8])
      kante_suchen_und_nach_oben_bringen(eckeZuChecken[i], eckeZuChecken2[i]); // Die Kante kommt immer oben über grün hin ([2][7])
      if (cubeColorsIntern[0][8] == weissNum) weiss_oben_mit_Kante_einsetzen();
      else if (cubeColorsIntern[0][8] != cubeColorsIntern[2][7]) hamburger_einsetzen(); // Wenn die Farben oben verschieden sind
      else if (cubeColorsIntern[0][8] == cubeColorsIntern[2][7]) gleiche_farben_einsetzen(); // Wenn die Fraben oben gleich sind
    }
  }
}

void ecke_suchen_und_nach_oben_bringen(int farbe1, int farbe2) {
  if ((cubeColorsIntern[2][14] == farbe1 && cubeColorsIntern[0][5] == farbe2 && cubeColorsIntern[2][0] == weissNum) || //Wenn eine Ecke unten zwischen rot und grün ist
    (cubeColorsIntern[2][14] == farbe2 && cubeColorsIntern[0][5] == weissNum && cubeColorsIntern[2][0] == farbe1) ||
    (cubeColorsIntern[2][14] == weissNum && cubeColorsIntern[0][5] == farbe1 && cubeColorsIntern[2][0] == farbe2)) {
    algoexe("R,U,R',");
    finalresult += "R,U,R',";
  } else if ((cubeColorsIntern[2][5] == farbe1 && cubeColorsIntern[0][17] == farbe2 && cubeColorsIntern[2][2] == weissNum) || //Wenn eine Ecke unten zwischen grün und orange ist
    (cubeColorsIntern[2][5] == farbe2 && cubeColorsIntern[0][17] == weissNum && cubeColorsIntern[2][2] == farbe1) ||
    (cubeColorsIntern[2][5] == weissNum && cubeColorsIntern[0][17] == farbe1 && cubeColorsIntern[2][2] == farbe2)) {
    algoexe("R',U,U,R,");
    finalresult += "R',U,U,R,";
  } else if ((cubeColorsIntern[2][17] == farbe1 && cubeColorsIntern[0][11] == farbe2 && cubeColorsIntern[0][2] == weissNum) || //Wenn eine Ecke unten zwischen orange und blau ist
    (cubeColorsIntern[2][17] == farbe2 && cubeColorsIntern[0][11] == weissNum && cubeColorsIntern[0][2] == farbe1) ||
    (cubeColorsIntern[2][17] == weissNum && cubeColorsIntern[0][11] == farbe1 && cubeColorsIntern[0][2] == farbe2)) {
    algoexe("B',U',B,");
    finalresult += "B',U',B,";
  } else if ((cubeColorsIntern[2][11] == farbe1 && cubeColorsIntern[0][14] == farbe2 && cubeColorsIntern[0][0] == weissNum) || //Wenn eine Ecke unten zwischen blau und rot ist
    (cubeColorsIntern[2][11] == farbe2 && cubeColorsIntern[0][14] == weissNum && cubeColorsIntern[0][0] == farbe1) ||
    (cubeColorsIntern[2][11] == weissNum && cubeColorsIntern[0][14] == farbe1 && cubeColorsIntern[0][0] == farbe2)) {
    algoexe("F,U,F',U',");
    finalresult += "F,U,F',U',";
  } else if ((cubeColorsIntern[2][12] == farbe1 && cubeColorsIntern[2][8] == farbe2 && cubeColorsIntern[0][3] == weissNum) || //Wenn eine Ecke oben zwischen rot und grün ist
    (cubeColorsIntern[2][12] == farbe2 && cubeColorsIntern[2][8] == weissNum && cubeColorsIntern[0][3] == farbe1) ||
    (cubeColorsIntern[2][12] == weissNum && cubeColorsIntern[2][8] == farbe1 && cubeColorsIntern[0][3] == farbe2)) {
    algoexe("U,");
    finalresult += "U,";
  } else if ((cubeColorsIntern[2][3] == farbe1 && cubeColorsIntern[2][6] == farbe2 && cubeColorsIntern[0][15] == weissNum) || //Wenn eine Ecke oben zwischen grün und orange ist
    (cubeColorsIntern[2][3] == farbe2 && cubeColorsIntern[2][6] == weissNum && cubeColorsIntern[0][15] == farbe1) ||
    (cubeColorsIntern[2][3] == weissNum && cubeColorsIntern[2][6] == farbe1 && cubeColorsIntern[0][15] == farbe2)) {
    algoexe("U,U,");
    finalresult += "U,U,";
  } else if ((cubeColorsIntern[2][15] == farbe1 && cubeColorsIntern[0][6] == farbe2 && cubeColorsIntern[0][9] == weissNum) || //Wenn eine Ecke oben zwischen orange und blau ist
    (cubeColorsIntern[2][15] == farbe2 && cubeColorsIntern[0][6] == weissNum && cubeColorsIntern[0][9] == farbe1) ||
    (cubeColorsIntern[2][15] == weissNum && cubeColorsIntern[0][6] == farbe1 && cubeColorsIntern[0][9] == farbe2)) {
    algoexe("U',");
    finalresult += "U',";
  }
}

void kante_suchen_und_nach_oben_bringen(int farbe1, int farbe2) {
  if ((cubeColorsIntern[2][13] == farbe1 && cubeColorsIntern[0][4] == farbe2) || // Wenn die Kante in der Mitte zwischen Rot und Grün ist
    (cubeColorsIntern[2][13] == farbe2 && cubeColorsIntern[0][4] == farbe1)) {
    algoexe("R,U,R',U',");
    finalresult += "R,U,R',U',";
  } else if ((cubeColorsIntern[2][4] == farbe1 && cubeColorsIntern[0][16] == farbe2) || // Wenn die Kante in der Mitte zwischen Grün und Orange ist
    (cubeColorsIntern[2][4] == farbe2 && cubeColorsIntern[0][16] == farbe1)) {
    algoexe("U',B,U,B',");
    finalresult += "U',B,U,B',";
  } else if ((cubeColorsIntern[2][16] == farbe1 && cubeColorsIntern[0][10] == farbe2) || // Wenn die Kante in der Mitte zwischen Orange und Blau ist
    (cubeColorsIntern[2][16] == farbe2 && cubeColorsIntern[0][10] == farbe1)) {
    algoexe("U',B',U,B,");
    finalresult += "U',B',U,B,";
  } else if ((cubeColorsIntern[2][10] == farbe1 && cubeColorsIntern[0][13] == farbe2) || // Wenn die Kante in der Mitte zwischen Blau und Rot ist
    (cubeColorsIntern[2][10] == farbe2 && cubeColorsIntern[0][13] == farbe1)) {
    algoexe("U',F,U,U,F',U,");
    finalresult += "U',F,U,U,F',U,";
  } else if ((cubeColorsIntern[1][8] == farbe1 && cubeColorsIntern[1][12] == farbe2) || // Wenn die Kante oben über Rot ist
    (cubeColorsIntern[1][8] == farbe2 && cubeColorsIntern[1][12] == farbe1)) {
    algoexe("U',F,U',F',U,");
    finalresult += "U',F,U',F',U,";
  } else if ((cubeColorsIntern[1][6] == farbe1 && cubeColorsIntern[1][15] == farbe2) || // Wenn die Kante oben über Orange ist
    (cubeColorsIntern[1][6] == farbe2 && cubeColorsIntern[1][15] == farbe1)) {
    algoexe("U,L',U,L,U',");
    finalresult += "U,L',U,L,U',";
  } else if ((cubeColorsIntern[0][7] == farbe1 && cubeColorsIntern[1][9] == farbe2) || // Wenn die Kante oben über Blau
    (cubeColorsIntern[0][7] == farbe2 && cubeColorsIntern[1][9] == farbe1)) {
    algoexe("U,L',U,U,L,U',");
    finalresult += "U,L',U,U,L,U',";
  }
}

void weiss_oben_mit_Kante_einsetzen() {
  int colorSeite = cubeColorsIntern[1][3];
  int colorOben = cubeColorsIntern[2][7];

  if (colorSeite == gruenNum && colorOben == rotNum) {
    algoexe("R,U,U,R',U,R,U',R',");
    finalresult += "R,U,U,R',U,R,U',R',";
  } else if (colorSeite == rotNum && colorOben == gruenNum) {
    algoexe("U,F',U',F,U',F',U,F,");
    finalresult += "U,F',U',F,U',F',U,F,";
  } else if (colorSeite == gruenNum && colorOben == orangeNum) {
    algoexe("R',U',R,U',R',U,R,");
    finalresult += "R',U',R,U',R',U,R,";
  } else if (colorSeite == orangeNum && colorOben == gruenNum) {
    algoexe("U',B,U,U,B',U,B,U',B',");
    finalresult += "U',B,U,U,B',U,B,U',B',";
  } else if (colorSeite == orangeNum && colorOben == blauNum) {
    algoexe("U',B',U',B,U',B',U,B,");
    finalresult += "U',B',U',B,U',B',U,B,";
  } else if (colorSeite == blauNum && colorOben == orangeNum) {
    algoexe("U,U,L,U,U,L',U,L,U',L',");
    finalresult += "U,U,L,U,U,L',U,L,U',L',";
  } else if (colorSeite == blauNum && colorOben == rotNum) {
    algoexe("U,U,L',U',L,U',L',U,L,");
    finalresult += "U,U,L',U',L,U',L',U,L,";
  } else if (colorSeite == rotNum && colorOben == blauNum) {
    algoexe("U,F,U,U,F',U,F,U',F',");
    finalresult += "U,F,U,U,F',U,F,U',F',";
  }
}

void hamburger_einsetzen() {
  int colorSeite = cubeColorsIntern[1][3];
  int colorOben = cubeColorsIntern[2][7];

  if (colorSeite == gruenNum && colorOben == rotNum) {
    algoexe("U',R,U,R',");
    finalresult += "U',R,U,R',";
  } else if (colorSeite == rotNum && colorOben == gruenNum) {
    algoexe("R,U,R',U,U,F',U',F,");
    finalresult += "R,U,R',U,U,F',U',F,";
  } else if (colorSeite == orangeNum && colorOben == gruenNum) {
    algoexe("U,U,B,U,B',");
    finalresult += "U,U,B,U,B',";
  } else if (colorSeite == gruenNum && colorOben == orangeNum) {
    algoexe("R',U,R,U,R',U',R,");
    finalresult += "R',U,R,U,R',U',R,";
  } else if (colorSeite == blauNum && colorOben == orangeNum) {
    algoexe("U,L,U,L',");
    finalresult += "U,L,U,L',";
  } else if (colorSeite == orangeNum && colorOben == blauNum) {
    algoexe("L,U',L',U,B',U',B,");
    finalresult += "L,U',L',U,B',U',B,";
  } else if (colorSeite == rotNum && colorOben == blauNum) {
    algoexe("F,U,F',");
    finalresult += "F,U,F',";
  } else if (colorSeite == blauNum && colorOben == rotNum) {
    algoexe("U,L',U',L,U',L',U',L,");
    finalresult += "U,L',U',L,U',L',U',L,";
  }
}

void gleiche_farben_einsetzen() {
  int colorSeite = cubeColorsIntern[1][3];
  int colorOben = cubeColorsIntern[2][7];

  if (colorSeite == rotNum && colorOben == gruenNum) {
    algoexe("F',U,U,F,U,U,F',U,F,");
    finalresult += "F',U,U,F,U,U,F',U,F,";
  } else if (colorSeite == gruenNum && colorOben == rotNum) {
    algoexe("U,U,R,U,R',U,U,R,U',R',");
    finalresult += "U,U,R,U,R',U,U,R,U',R',";
  } else if (colorSeite == orangeNum && colorOben == gruenNum) {
    algoexe("U,B,U,B',U,U,B,U',B',");
    finalresult += "U,B,U,B',U,U,B,U',B',";
  } else if (colorSeite == gruenNum && colorOben == orangeNum) {
    algoexe("U',R',U,U,R,U,U,R',U,R,");
    finalresult += "U',R',U,U,R,U,U,R',U,R,";
  } else if (colorSeite == orangeNum && colorOben == blauNum) {
    algoexe("U,U,B',U,U,B,U,U,B',U,B,");
    finalresult += "U,U,B',U,U,B,U,U,B',U,B,";
  } else if (colorSeite == blauNum && colorOben == orangeNum) {
    algoexe("L,U,L',U,U,L,U',L',");
    finalresult += "L,U,L',U,U,L,U',L',";
  } else if (colorSeite == blauNum && colorOben == rotNum) {
    algoexe("U,L',U,U,L,U,U,L',U,L,");
    finalresult += "U,L',U,U,L,U,U,L',U,L,";
  } else if (colorSeite == rotNum && colorOben == blauNum) {
    algoexe("U',F,U,F',U,U,F,U',F',");
    finalresult += "U',F,U,F',U,U,F,U',F',";
  }
}


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++   OLL Code
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// https://ruwix.com/the-rubiks-cube/advanced-cfop-fridrich/orient-the-last-layer-oll/

void OLL() {
  int ucounter = 0;
  print("suche nach OLL Lösung |");
  while (!ueberpruefenOLL()) {
    alle_Kanten_vorhanden(); // 7 Algorithmen
    if (ueberpruefenOLL()) break;
    punkt_in_Mitte(); // 8 Algorithmen
    if (ueberpruefenOLL()) break;
    linie(); // 4 Algorithmen
    if (ueberpruefenOLL()) break;
    alle_Ecken_vorhanden(); // 2 Algorithmen
    if (ueberpruefenOLL()) break;
    random_shapes1(); // 6 Algorithmen
    if (ueberpruefenOLL()) break;
    random_shapes2(); // 6 Algorithmen
    if (ueberpruefenOLL()) break;
    random_shapes3(); // 4 Algorithmen
    if (ueberpruefenOLL()) break;
    random_shapes4(); // 4 Algorithmen
    if (ueberpruefenOLL()) break;
    c_shapes(); // 2 Algorithmen
    if (ueberpruefenOLL()) break;
    l_shapes(); // 4 Algorithmen
    if (ueberpruefenOLL()) break;
    p_shapes(); // 4 Algorithmen
    if (ueberpruefenOLL()) break;
    t_shapes(); // 2 Algorithmen
    if (ueberpruefenOLL()) break;
    w_shapes(); // 2 Algorithmen
    if (ueberpruefenOLL()) break;
    z_shapes(); // 2 Algorithmen
    if (ueberpruefenOLL()) break;
    algoexe("U,"); 
    finalresult += "U,";
    ucounter++;
  }
  println(". Algorithmus| |" + ucounter + "U Moves|");
  //println();
}

boolean ueberpruefenOLL() {
  boolean bool = true;
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      if (cubeColorsIntern[j][i+6] != gelbNum) {
        bool = false;
      }
    }
  }
  return bool;
}

void alle_Kanten_vorhanden() {
  if (gom() && gml() && gmm() && gmr() && gum() && obenL() && rechtsO() && rechtsU() && untenL()) {
    algoexe("L,U',R',U,L',U,R,U,R',U,R,");
    finalresult += "L,U',R',U,L',U,R,U,R',U,R,";
    print("1");
  } else if (gom() && gml() && gmm() && gmr() &&  gum() && linksO() && linksU() && rechtsO() && rechtsU()) {
    algoexe("R,U,R',U,R,U',R',U,R,U,U,R',");
    finalresult += "R,U,R',U,R,U',R',U,R,U,U,R',";   
    print("2");
  } else if (gom() && gml() && gmm() && gmr() && gum() && gur() && obenR() && linksO() && untenL()) {
    algoexe("L',U,R,U',L,U,R',");
    finalresult += "L',U,R,U',L,U,R',";  
    print("3");
  } else if (gom() && gml() && gmm() && gmr() && gum() && gur() && obenL() && rechtsO() && linksU()) {
    algoexe("R',U,U,R,U,R',U,R,");
    finalresult += "R',U,U,R,U,R',U,R,";
    print("4");
  } else if (gol() && gom() && gml() && gmm() && gmr() && gul() && gum() && obenR() && untenR()) {
    algoexe("R',F',L,F,R,F',L',F,");
    finalresult += "R',F',L,F,R,F',L',F,";
    print("5");
  } else if (gol() && gom() && gor() && gml() && gmm() && gmr() && gum() && untenR() && untenL()) {
    algoexe("R,R,D,R',U,U,R,D',R',U,U,R',");
    finalresult += "R,R,D,R',U,U,R,D',R',U,U,R',";
    print("6");
  } else if (gol() && gom() && gml() && gmm() && gmr() && gum() && gur() && obenR() && linksU()) {
    algoexe("R',F',L',F,R,F',L,F,");
    finalresult += "R',F',L',F,R,F',L,F,";
    print("7");
  }
}

void punkt_in_Mitte() {
  if (gmm() && obenM() && linksO() && linksM() && linksU() && rechtsO() && rechtsM() && rechtsU() && untenM()) {
    algoexe("R,U,B',l,U,l',R',U',R',F,R,F',");
    finalresult += "R,U,B',l,U,l',R',U',R',F,R,F',";
    print("8");
  } else if (gmm() && obenM() && linksO() && linksM() && rechtsO() && rechtsM() && untenL() && untenM() && untenR()) {
    algoexe("R',F,R,F',U,U,R',F,R,u',D,R,R,U,U,R,u,D',");
    finalresult += "R',F,R,F',U,U,R',F,R,u',D,R,R,U,U,R,u,D',";
    print("9");
  } else if (gmm() && gur() && obenL() &&  obenM() && rechtsO() && rechtsM() && linksM() && linksU() && untenM()) {
    algoexe("u,D',L',R,R,B,R',B,L,U,U,L',B,r,R',r',L,u',D,");
    finalresult += "u,D',L',R,R,B,R',B,L,U,U,L',B,r,R',r',L,u',D,";
    print("10");
  } else if (gmm() && gor() && obenM() && rechtsM() && rechtsU() && linksO() && linksM() && untenL() && untenM()) {
    algoexe("R',U,U,r,L',R',U,R,U',u,D',R',U',R',U,R',F,u',D,r',L,");
    finalresult += "R',U,U,r,L',R',U,R,U',u,D',R',U',R',U,R',F,u',D,r',L,";
    print("11");
  } else if (gol() && gmm() && gur() && obenM() && obenR() && linksM() && linksU() && rechtsM() && untenM()) {
    algoexe("R,U,R',U,R',F,R,F',U,U,R',F,R,F',");
    finalresult += "R,U,R',U,R',F,R,F',U,U,R',F,R,F',";
    print("12");
  } else if (gol() && gor() && gmm() && gul() && gur() && obenM() && linksM() && rechtsM() && untenM()) {
    algoexe("r,R',U,U,r',R,U,U,r,R',U,r',R,U,U,r,R',U,U,r',R,");
    finalresult += "r,R',U,U,r',R,U,U,r,R',U,r',R,U,U,r,R',U,U,r',R,";
    print("13");
  } else if (gol() && gor() && gmm() && obenM() && linksM() && linksU() && rechtsM() && rechtsU() && untenM()) {
    algoexe("R',U,U,F,R,U,R',U',u',D,R,R,U,U,r',L,R,U,r,L',u,D',");
    finalresult += "R',U,U,F,R,U,R',U',u',D,R,R,U,U,r',L,R,U,r,L',u,D',";
    print("14");
  } else if (gmm() && gul() && gur() && obenL() && obenM() && obenR() && linksM() && rechtsM() && untenM()) {
    algoexe("F,R,U,R',U,u',D,R',U,U,R',F,R,F',u,D',");
    finalresult += "F,R,U,R',U,u',D,R',U,U,R',F,R,F',u,D',";
    print("15");
  }
}

void linie() {
  if (gom() && gmm() && gum() && obenL() && rechtsO() && rechtsM() && rechtsU() && linksM() && untenL()) {
    algoexe("R',U',u,D',L',U,L',u',D,L,F,L',F,R,");
    finalresult += "R',U',u,D',L',U,L',u',D,L,F,L',F,R,";
    print("16");
  } else if (gom() && gmm() && gum() && rechtsO() && rechtsM() && rechtsU() && linksO() && linksM() && linksU()) {
    algoexe("R,U',u,D',R,R,D,R',U,U,R,D',R,R,d,R',u',D,d',");
    finalresult += "R,U',u,D',R,R,D,R',U,U,R,D',R,R,d,R',u',D,d',";
    print("17");
  } else if (gml() && gmm() && gmr() && obenL() && obenM() && rechtsO() && rechtsU() && untenL() && untenM()) {
    algoexe("F,U,R,U',R',U,R,U',R',F',");
    finalresult += "F,U,R,U',R',U,R,U',R',F',";
    print("18");
  } else if (gml() && gmm() && gmr() && obenM() && linksO() && linksU() && rechtsO() && rechtsU() && untenM()) {
    algoexe("L',B',L,U',R',U,R,U',R',U,R,L',B,L,");
    finalresult += "L',B',L,U',R',U,R,U',R',U,R,L',B,L,";
    print("19");
  }
}

void alle_Ecken_vorhanden() {
  if (gol() && gor() && gml() && gmm() && gul() && gum() && gur() && obenM() && rechtsM()) {
    algoexe("r,R',U',r',R,U,U,r,R',U',r',R,");
    finalresult += "r,R',U',r',R,U,U,r,R',U',r',R,";
    print("20");
  } else if (gol() && gor() && gml() && gmm() && gmr() && gul() && gur() && obenM() && untenM()) {
    algoexe("L',R,U,R',U',L,R',F,R,F',");
    finalresult += "L',R,U,R',U',L,R',F,R,F',";
    print("21");
  }
}

void random_shapes1() {
  if (gom() && gml() && gmm() && gul() && obenL() && rechtsO() && rechtsM() && untenM() && untenR()) {
    algoexe("L,F,R',F,R,F,F,L',");
    finalresult += "L,F,R',F,R,F,F,L',";
    print("22");
  } else if (gol() && gom() && gml() && gmm() && gur() && rechtsO() && rechtsM() && untenL() && untenM()) {
    algoexe("F,R',F',R,U,R,U',R',");
    finalresult += "F,R',F',R,U,R,U',R',";
    print("23");
  } else if (gom() && gml() && gmm() && gur() && obenR() && linksO() && rechtsM() && untenL() && untenM()) {
    algoexe("R',U',R,u',D,r',L,R,U',R',F,R,U,R',r,L',u,D',");
    finalresult += "R',U',R,u',D,r',L,R,U',R',F,R,U,R',r,L',u,D',";
    print("24");
  } else if (gom() && gml() && gmm() && gul() && gur() && obenL() && obenR() && untenM() && rechtsM()) {
    algoexe("U',R,U,U,R',U',R,U',R,R,u',D,R',U',R,U,B,u,D',");
    finalresult += "U',R,U,U,R',U',R,U',R,R,u',D,R',U',R,U,B,u,D',";
    print("25");
  } else if (gom() && gml() && gmm() && obenR() && linksO() && linksU() && rechtsM() && untenM() && untenR()) {
    algoexe("F,R,U,R',U',R,U,R',U',F',");
    finalresult += "F,R,U,R',U',R,U,R',U',F',";
    print("26");
  } else if (gom() && gml() && gmm() && obenL() && obenR() && rechtsM() && untenL() && untenM() && untenR()) {
    algoexe("L,F',L',F,U,U,L,L,u',D,L,F,L',F,u,D',");
    finalresult += "L,F',L',F,U,U,L,L,u',D,L,F,L',F,u,D',";
    print("27");
  }
}

void random_shapes2() {
  if (gom() && gmm() && gmr() && gul() && gur() && obenR() && obenL() && linksM() && untenM()) {
    algoexe("U',R',U,U,R,U,R',U,R,R,u,D',R,U,R',U',F',u',D,");
    finalresult += "U',R',U,U,R,U,R',U,R,R,u,D',R,U,R',U',F',u',D,";
    print("28");
  } else if (gom() && gor() && gmm() && gmr() && linksO() && linksM() && untenL() && untenM() && rechtsU()) {
    algoexe("r,U,U,R',U',R,U',r',");
    finalresult += "r,U,U,R',U',R,U',r',";
    print("29");
  } else if (gom() && gor() && gmm() && gmr() && gul() && obenL() && linksM() && rechtsU() && untenM()) {
    algoexe("R',U,U,l,R,U',R',U,l',U,U,R,");
    finalresult += "R',U,U,l,R,U',R',U,l',U,U,R,";
    print("30");
  } else if (gom() && gmm() && gmr() && obenL() && rechtsO() && rechtsU() && linksM() && untenL() && untenM()) {
    algoexe("F',L',U',L,U,L',U',L,U,F,");
    finalresult += "F',L',U',L,U,L',U',L,U,F,";
    print("31");
  } else if (gom() && gmm() && gmr() && obenR() && linksO() && linksM() && linksU() && untenM() && untenR()) {
    algoexe("R',F,R',F',R,R,U,U,r',L,U',R,U,R',r,L',");
    finalresult += "R',F,R',F',R,R,U,U,r',L,U',R,U,R',r,L',";
    print("32");
  } else if (gom() && gmm() && gmr() && obenL() && obenR() && linksM() && untenL() && untenM() && untenR()) {
    algoexe("R',F,R,F',U,U,R,R,u,D',R',F',R,F',u',D,");
    finalresult += "R',F,R,F',U,U,R,R,u,D',R',F',R,F',u',D,";
    print("33");
  }
}

void random_shapes3() {
  if (gor() && gml() && gmm() && gum() && obenL() && obenM() && rechtsM() && linksU() && untenR()) {
    algoexe("R,U,R',u,D',R',F,R,U',R',F',R,u',D,");
    finalresult += "R,U,R',u,D',R',F,R,U',R',F',R,u',D,";
    print("34");
  } else if (gol() && gml() && gmm() && gum() && obenM() && obenR() && rechtsM() && rechtsU() && untenL()) {
    algoexe("L',B',L,U',R',U,R,L',B,L,");
    finalresult += "L',B',L,U',R',U,R,L',B,L,";
    print("35");
  } else if (gml() && gmm() && gum() && gur() && obenM() && obenR() && linksO() && rechtsM() && untenL()) {
    algoexe("U,U,r,R,R,U',R,U',R',U,U,R,U',r',R,");
    finalresult += "U,U,r,R,R,U',R,U',R',U,U,R,U',r',R,";
    print("36");
  } else if (gol() && gor() && gml() && gmm() && gum() && obenM() && linksU() && rechtsM() && rechtsU()) {
    algoexe("r',L,U',R,U',R,R,F,r,L',R,U,R',U',R,B,B,");
    finalresult += "r',L,U',R,U',R,R,F,r,L',R,U,R',U',R,B,B,";
    print("37");
  }
}

void random_shapes4() {
  if (gmm() && gmr() && gum() && obenM() && obenR() && linksO() && linksM() && linksU() && untenR()) {
    algoexe("L,U',u',D,R',U,U,R',U,R,U',R,U,U,R,d',L',u,D',d,");
    finalresult += "L,U',u',D,R',U,U,R',U,R,U',R,U,U,R,d',L',u,D',d,";
    print("38");
  } else if (gmm() && gmr() && gul() && gum() && obenL() && obenM() && linksM() && rechtsO() && untenR()) {
    algoexe("U,U,l',L,L,U,L',U,L,U,U,L',U,r',R,");
    finalresult += "U,U,l',L,L,U,L',U,L,U,U,L',U,r',R,";//r,L',l,";
    print("39");
  } else if (gol() && gor() && gmm() && gmr() && gum() && obenM() && linksM() && linksU() && rechtsU()) {
    algoexe("R,R,U,R',B',R,U',R,R,U,l,U,l',");
    finalresult += "R,R,U,R',B',R,U',R,R,U,l,U,l',";
    print("40");
  } else if (gmm() && gmr() && gum() && gur() && obenL() && obenM() && linksM() && linksU() && rechtsO()) {
    algoexe("r',U,U,R,U,R',U,r,");
    finalresult += "r',U,U,R,U,R',U,r,";
    print("41");
  }
}

void c_shapes() {
  if (gol() && gom() && gmm() && gul() && gum() && linksM() && rechtsO() && rechtsM() && rechtsU()) {
    algoexe("R,U,r',L,R,U',R',U,r,L',U',R',");
    finalresult += "R,U,r',L,R,U',R',U,r,L',U',R',";
    print("42");
  } else if (gml() && gmm() && gmr() && gul() && gur() && obenM() && linksO() && rechtsO() && untenM()) {
    algoexe("R,U,R',U',r,L',D',R',U,R,u,U',u',D,r',L,");
    finalresult += "R,U,R',U',r,L',D',R',U,R,u,U',u',D,r',L,";
    print("43");
  }
}

void l_shapes() {
  if (gml() && gmm() && gmr() && gur() && obenM() && obenR() && linksO() && untenL() && untenM()) {
    algoexe("R',F,R,U,R',F',R,u,D',L,U',L',u',D,");
    finalresult += "R',F,R,U,R',F',R,u,D',L,U',L',u',D,";
    print("44");
  } else if (gml() && gmm() && gmr() && gul() && obenL() && obenM() && rechtsO() && untenM() && untenR()) {
    algoexe("L,F',L',U',L,F,L',u',D,R',U,R,u,D',");
    finalresult += "L,F',L',U',L,F,L',u',D,R',U,R,u,D',";
    print("45");
  } else if (gml() && gmm() && gmr() && gur() && obenL() && obenM() && linksU() && rechtsO() && untenM()) {
    algoexe("L',B',L,R',U',R,U,L',B,L,");
    finalresult += "L',B',L,R',U',R,U,L',B,L,";
    print("46");
  } else if (gml() && gmm() && gmr() && gul() && obenM() && obenR() && linksO() && rechtsU() && untenM()) {
    algoexe("R,B,R',L,U,L',U',R,B',R',");
    finalresult += "R,B,R',L,U,L',U',R,B',R',";
    print("47");
  }
}

void p_shapes() {
  if (gol() && gom() && gml() && gmm() && gul() && rechtsO() && rechtsM() && rechtsU() && untenM()) {
    algoexe("F,U,R,U',R',F',");
    finalresult += "F,U,R,U',R',F',";
    print("48");
  } else if (gom() && gor() && gmm() && gmr() && gur() && obenL() && linksM() && untenL() && untenM()) {
    algoexe("R',d',L,d,R,U',R',F',R,");
    finalresult += "R',d',L,d,R,U',R',F',R,";
    print("49");
  } else if (gol() && gom() && gml() && gmm() && gul() && obenR() && rechtsM() && untenM() && untenR()) {
    algoexe("L,d,R',d',L',U,L,F,L',");
    finalresult += "L,d,R',d',L',U,L,F,L',";
    print("50");
  } else if (gom() && gor() && gmm() && gmr() && gur() && linksO() && linksM() && linksU() && untenM()) {
    algoexe("F',U',L',U,L,F,");
    finalresult += "F',U',L',U,L,F,";
    print("51");
  }
}

void t_shapes() {
  if (gor() && gml() && gmm() && gmr() && gur() && obenM() && linksO() && linksU() && untenM()) {
    algoexe("F,R,U,R',U',F',");
    finalresult += "F,R,U,R',U',F',";
    print("52");
  } else if (gor() && gml() && gmm() && gmr() && gur() && obenL() && obenM() && untenL() && untenM()) {
    algoexe("R,U,R',U',R',F,R,F',");
    finalresult += "R,U,R',U',R',F,R,F',";
    print("53");
  }
}

void w_shapes() {
  if (gor() && gmm() && gmr() && gul() && gum() && obenM() && linksO() && linksM() && untenR()) {
    algoexe("L,U,L',U,L,U',L',U',u,u,D',D',R',F,R,F',u',u',D,D,");
    finalresult += "L,U,L',U,L,U',L',U',u,u,D',D',R',F,R,F',u',u',D,D,";
    print("54");
  } else if (gol() && gml() && gmm() && gum() && gur() && obenM() && rechtsO() && rechtsM() && untenL()) {
    algoexe("R',U',R,U',R',U,R,U,u,D',F,R',F',R,u',D,");
    finalresult += "R',U',R,U',R',U,R,U,u,D',F,R',F',R,u',D,";
    print("55");
  }
}

void z_shapes() {
  if (gol() && gml() && gmm() && gmr() && gur() && obenM() && obenR() && linksU() && untenM()) {
    algoexe("R',F,R,U,R',U',u,D',L',d,R,u',D,d',");
    finalresult += "R',F,R,U,R',U',u,D',L',d,R,u',D,d',";
    print("56");
  } else if (gor() && gml() && gmm() && gmr() && gul() && obenL() && obenM() && rechtsU() && untenM()) {
    algoexe("L,F',L',U',L,U,u',D,R,d',L',u,D',d,");
    finalresult += "L,F',L',U',L,U,u',D,R,d',L',u,D',d,";
    print("57");
  }
}

boolean untenL() {
  return cubeColorsIntern[0][12] == gelbNum;
}
boolean untenM() {
  return cubeColorsIntern[1][12] == gelbNum;
}
boolean untenR() {
  return cubeColorsIntern[2][12] == gelbNum;
}

boolean rechtsO() {
  return cubeColorsIntern[2][3] == gelbNum;
}
boolean rechtsM() {
  return cubeColorsIntern[1][3] == gelbNum;
}
boolean rechtsU() {
  return cubeColorsIntern[0][3] == gelbNum;
}

boolean obenL() {
  return cubeColorsIntern[2][15] == gelbNum;
}
boolean obenM() {
  return cubeColorsIntern[1][15] == gelbNum;
}
boolean obenR() {
  return cubeColorsIntern[0][15] == gelbNum;
}

boolean linksO() {
  return cubeColorsIntern[0][9] == gelbNum;
}
boolean linksM() {
  return cubeColorsIntern[1][9] == gelbNum;
}
boolean linksU() {
  return cubeColorsIntern[2][9] == gelbNum;
}

boolean gol() {
  return cubeColorsIntern[0][6] == gelbNum;
} // gelb oben links
boolean gom() {
  return cubeColorsIntern[1][6] == gelbNum;
} // gelb oben mitte
boolean gor() {
  return cubeColorsIntern[2][6] == gelbNum;
} // gelb oben rechts
boolean gml() {
  return cubeColorsIntern[0][7] == gelbNum;
} // gelb mitte links
boolean gmm() {
  return cubeColorsIntern[1][7] == gelbNum;
} // gelb mitte mitte
boolean gmr() {
  return cubeColorsIntern[2][7] == gelbNum;
} // gelb mitte rechts
boolean gul() {
  return cubeColorsIntern[0][8] == gelbNum;
} // gelb unten links
boolean gum() {
  return cubeColorsIntern[1][8] == gelbNum;
} // gelb unten mitte
boolean gur() {
  return cubeColorsIntern[2][8] == gelbNum;
} // gelb unten rechts



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++   PLL Code
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

int[][] cubeColorsPLL = new int [3][18];

void PLL() {
  copy_CubeColorsIntern_to_CubeColorsPLL();
  int algorithmus = 0, ucounter = 0, dcounter = 0;
  if (!ueberpruefenPLL()) {
    for (int j = 0; j < 4; j++) {
      for (int k = 0; k < 4; k++) {

        for (int i = 0; i < PLLalgorithms.length; i++) {
          copy_CubeColorsIntern_to_CubeColorsPLL();
          algoexePLL(PLLalgorithms[i]);
          if (ueberpruefenPLL()) {
            algorithmus = i;
            ucounter = k;
            dcounter = j;
            break;
          }
        }
        algoexe("U,");
      }
      algoexe("d',");
    }


    println("suche nach PLL Lösung |" + algorithmus +". Algorithmus| |"+ ucounter +"U Moves| |"+ dcounter + "d' Moves|");
    for (int i = 0; i < ucounter; i++) {
      algoexe("U,");
      finalresult += "U,";
    }
    for (int i = 0; i < dcounter; i++) {
      algoexe("d',");
      finalresult += "d',";
    }
    algoexe(PLLalgorithms[algorithmus]);
    finalresult += PLLalgorithms[algorithmus];
  }
}

boolean ueberpruefenPLL() {
  boolean toReturn = true;
  for (int i = 0; i<3; i++) {
    if (cubeColorsPLL[i][12] != cubeColorsPLL[i][13]) {
      toReturn = false;
    }
  }
  for (int i = 0; i<3; i++) {
    if (cubeColorsPLL[i][3] != cubeColorsPLL[i][4]) {
      toReturn = false;
    }
  }
  for (int i = 0; i<3; i++) {
    if (cubeColorsPLL[i][15] != cubeColorsPLL[i][16]) {
      toReturn = false;
    }
  }
  for (int i = 0; i<3; i++) {
    if (cubeColorsPLL[i][9] != cubeColorsPLL[i][10]) {
      toReturn = false;
    }
  }
  return toReturn;
}
String[] PLLalgorithms = {"r,L',R',U,R',D,D,R,U',R',D,D,R,R,r',L,", //x [(R' U R') D2] [(R U' R') D2] R2
  "r',L,R,U',R,D,D,R',U,R,D,D,R,R,r,L',", //x' [(R U' R) D2] [(R' U R) D2] R2
  "R,R,U,R,U,R',U',R',U',R',U,R',", 
  "R,U',R,U,R,U,R,U',R',U',R,R,", 
  "r',R,r',R,U,r',R,r',R,U,U,r',R,r',R,U,r',R,r',R,", 
  "R,U,R',U',R',F,R,R,U',R',U',R,U,R',F',", 
  "R',U,L',U,U,R,U',R',U,U,R,L,U',", 
  "R,U,R',F',R,U,R',U',R',F,R,R,U',R',U',", 
  "L,U,U,L',U,U,L,F',L',U',L,U,L,F,L,L,U,", 
  "R',U,U,R,U,U,R',F,R,U,R',U',R',F',R,R,U',", 
  "R',U,R',d',R',F',R,R,U',R',U,R',F,R,F,d,", 
  "R,R,u,R',U,R',U',R,u',R,R,u',D,R',U,R,u,D',", 
  "R',U',R,u,D',R,R,u,R',U,R,U',R,u',R,R,u',D,", 
  "R,R,u',R,U',R,U,R',u,R,R,u,D',R,U',R',u',D,", //R2 u' R U' R U R' u R2 [y R U' R']
  "R,U,R',u',D,R,R,u',R,U',R',U,R',u,R,R,u,D',", 
  "R',U,U,R',d',R',F',R,R,U',R',U,R',F,R,U',F,d,", 
  "r',R,r',R,U,r',R,r',R,U,r,R',U,U,r',R,r',R,U,U,r,R',U,U,", 
  "F,R,U',R',U',R,U,R',F',R,U,R',U',R',F,R,F',", 
  "L,U',R,U,U,L',U,R',L,U',R,U,U,L',U,R',U,", 
  "R',U,L',U,U,R,U',L,R',U,L',U,U,R,U',L,U',", 
  "r,L',R,U',R',D,R,U,R',u,u,R',U,R,D,R',U',R,r',L,"};
// alle algorithemen in einem Stringarray speichern und mit einer for schleife aufrufen und ausprobieren ob 
// es geht, wenn nicht, den vorher gespeichterten Zustand des Würfels wiederherstellen und den nächsten algorithmus 
// ausprobieren, usw. Wenn am Ende angekommen, dann einmal U Move und alles nochmal von vorne LOL
