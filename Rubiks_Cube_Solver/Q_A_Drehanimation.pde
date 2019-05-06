void qaDrehAnimation() {

  if (eingabe == 'Q') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gelb("U", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        pushMatrix();
        rotateY((PI/2)*-time);
        drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else if (eingabe == 'q') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gelb("u", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        pushMatrix();
        rotateY((PI/2)*-time);
        drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 0 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 0|| y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 0|| y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 0|| y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else if (eingabe == 'A') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gelb("U'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        pushMatrix();
        rotateY((PI/2)*time);
        drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 0) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else if (eingabe == 'a') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gelb("u'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        pushMatrix();
        rotateY((PI/2)*time);
        drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 0 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 0|| y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 0|| y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 0|| y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
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
//------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------
void wsDrehAnimation() {

  if (eingabe == 'W') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Weiss("D", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        pushMatrix();
        rotateY((PI/2)*time);
        drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else if (eingabe == 'w') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Weiss("d", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        pushMatrix();
        rotateY((PI/2)*time);
        drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else if (eingabe == 'S') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Weiss("D'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        pushMatrix();
        rotateY((PI/2)*-time);
        drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 100) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else if (eingabe == 's') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Weiss("d'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        pushMatrix();
        rotateY((PI/2)*-time);
        drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }
    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (y == 100 || y == 50) {
          pushMatrix();
          rotateY((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
  } else {
    //3x3 Wand unten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        pushMatrix();
        drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
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
  }
  //3x3 Wand oben ohne Animation
  for (int x = 0; x < 150; x += 50) {
    for (int z = 100; z > -50; z -= 50) {
      int y = -75;
      pushMatrix();
      drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
      popMatrix();
    }
  }
}
//------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------

void edDrehAnimation() {

  if (eingabe == 'E') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gruen("R", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        pushMatrix();
        rotateX((PI/2)*time);
        drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'e') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gruen("r", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        pushMatrix();
        rotateX((PI/2)*time);
        drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'D') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gruen("R'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand rechts ohne Animation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        pushMatrix();
        rotateX((PI/2)*-time);
        drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'd') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Gruen("r'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand rechts ohne Animation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        pushMatrix();
        rotateX((PI/2)*-time);
        drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
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
  //3x3 Wand links ohne Animation
  for (int z = 0; z < 150; z += 50) {
    for (int y = 100; y > -50; y -= 50) {
      int x = -75;
      pushMatrix();
      drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
      popMatrix();
    }
  }
}
//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------
void rfDrehAnimation() {

  if (eingabe == 'R') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Blau("L", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        pushMatrix();
        rotateX((PI/2)*-time);
        drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'r') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Blau("l", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        pushMatrix();
        rotateX((PI/2)*-time);
        drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'F') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Blau("L'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        pushMatrix();
        rotateX((PI/2)*time);
        drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 0) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 100) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'f') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Blau("l'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        pushMatrix();
        rotateX((PI/2)*time);
        drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        popMatrix();
      }
    }
    //3x3 Wand vorne drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
          popMatrix();
        } else {
          drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        }
      }
    }

    //3x3 Wand hinten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        if (x == 0 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
          popMatrix();
        } else {
          drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (x == 100 || x == 50) {
          pushMatrix();
          rotateX((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
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
  //3x3 Wand rechts ohne Animation
  for (int z = 0; z < 150; z += 50) {
    for (int y = 100; y > -50; y -= 50) {
      int x = 75;
      pushMatrix();
      drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
      popMatrix();
    }
  }
}
//----------------------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------------------
void tgDrehAnimation() {

  if (eingabe == 'T') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Rot("F", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand vorne ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        pushMatrix();
        rotateZ((PI/2)*time);
        drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 't') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Rot("f", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand vorne ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        pushMatrix();
        rotateZ((PI/2)*time);
        drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'G') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Rot("F'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand vorne ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        pushMatrix();
        rotateZ((PI/2)*-time);
        drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'g') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Rot("f'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand vorne ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = 75;
        pushMatrix();
        rotateZ((PI/2)*-time);
        drawWallColors(50 - x, y - 50, z, x, y, 1, 12);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
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
}
//----------------------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------------------
void zhDrehAnimation() {

  if (eingabe == 'Z') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Orange("B", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand hinten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        pushMatrix();
        rotateZ((PI/2)*-time);
        drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'z') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Orange("b", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand hinten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        pushMatrix();
        rotateZ((PI/2)*-time);
        drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*-time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'H') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Orange("B'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand hinten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        pushMatrix();
        rotateZ((PI/2)*time);
        drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 0) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 100) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
  } else if (eingabe == 'h') {
    if (millis() - prevMillis > animationTime/animationSteps) {
      time += 1/animationSteps;
      prevMillis = millis();
      if (time > 1) {
        eingabe = ' ';
        time = 0;
        cubeColors = Orange("b'", cubeColors);
        animieren = false;
      } else animieren = true;
    }
    //3x3 Wand hinten ohne Animation
    for (int x = 0; x < 150; x += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int z = -75;
        pushMatrix();
        rotateZ((PI/2)*time);
        drawWallColors(x - 50, y - 50, z, x, y, 1, 15);
        popMatrix();
      }
    }
    //3x3 Wand rechts drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = 75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, z - 50, z, y, 2, 3);
        }
      }
    }

    //3x3 Wand links drehanimation
    for (int z = 0; z < 150; z += 50) {
      for (int y = 100; y > -50; y -= 50) {
        int x = -75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
          popMatrix();
        } else {
          drawWallColors(x, y - 50, 50 - z, z, y, 2, 9);
        }
      }
    }
    //3x3 Wand oben drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = -75;
        if (z == 0 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, z - 50, x, z, 3, 6);
        }
      }
    }
    //3x3 Wand unten drehanimation
    for (int x = 0; x < 150; x += 50) {
      for (int z = 100; z > -50; z -= 50) {
        int y = 75;
        if (z == 100 || z == 50) {
          pushMatrix();
          rotateZ((PI/2)*time);
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
          popMatrix();
        } else {
          drawWallColors(50 - x, y, 50 - z, x, z, 3, 0);
        }
      }
    }
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
}
