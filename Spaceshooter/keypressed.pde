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
 
  if (mode == menu) {
    menuSelect();
  }
  
}
