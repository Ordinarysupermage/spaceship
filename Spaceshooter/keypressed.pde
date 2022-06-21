void keyPressed() {
  if ( keyCode == UP) upkey = true;
  if ( keyCode == DOWN) downkey = true;
  if ( keyCode == LEFT) leftkey = true;
  if ( keyCode == RIGHT) rightkey = true;
  if ( keyCode == ' ') spacekey = true;
  if ( keyCode == 'W') upkey = true;
  if ( keyCode == 'S') downkey = true;
  if ( keyCode == 'A') leftkey = true;
  if ( keyCode == 'D') rightkey = true;
  if ( keyCode == 'F') cheat = true;
  if ( keyCode == 'Z') cheat = false;
  if ( keyCode == 'P') mode = pause;
  if ( keyCode == 'Q') {
    if (mode == game && medic == true) {
      if (player1.mediccooldown > player1.medicthreshold) {
        if ( player1.live < 30) {
          player1.live += 2;
          player1.mediccooldown = 0;
        }
      }
    }

    if (mode == game && teleport == true) {
      if (player1.mediccooldown > player1.medicthreshold) {
        player1.x = mouseX;
        player1.y = mouseY;
        player1.mediccooldown = 0;
      }
    }
  }
}

void keyReleased() {
  if ( keyCode == UP) upkey = false;
  if ( keyCode == DOWN) downkey = false;
  if ( keyCode == LEFT) leftkey = false;
  if ( keyCode == RIGHT) rightkey = false;
  if ( keyCode == ' ') spacekey = false;
  if ( keyCode == 'W') upkey = false;
  if ( keyCode == 'S') downkey = false;
  if ( keyCode == 'A') leftkey = false;
  if ( keyCode == 'D') rightkey = false;
}


void mousePressed() {
  //image(start, width/2, height/2+50, 300, 150);
  if (mode == pause) {
    pauseClicked();
  }
  if (mode == menu) {
    menuSelect();

    if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height/2 -25 && mouseY < height/2 + 125) {
      startw = 250;
      starth = 125;
    }

    if ( mouseX > 75 && mouseX < 225 && mouseY > 662 && mouseY < 738) {
      mode = shop;
    }
  }

  if ( mode == shop) {
    shopselect();
  }

  if ( mode == gameover) {
    if ( dist( mouseX, mouseY, 100, 700) < 100) mode = menu;
  }
}

void mouseReleased() {
  //elementary, secondary, undergrad, master , phd
  if ( mode == menu) {
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height/2 -25 && mouseY < height/2 + 125) {
      if (elementary == true || secondary == true|| undergrad == true|| master == true || phd == true) {
        startw = 300;
        starth = 150;
        mode = game;
      }
    }
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height/2 -25 && mouseY < height/2 + 125) {
      startw = 300;
      starth = 150;
    }
  }
}
