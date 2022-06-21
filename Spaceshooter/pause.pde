void pause() {
  fill(255);
  background(0);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("Paused", width/2, 100);
  image(menuicon, width/2 - width/4, height/2 + 50, 100, 100);
  textSize( 50);
  text("Resume", width/2 + 250, height/2 + 20);
}

void pauseClicked() {
  if ( int(dist( mouseX, mouseY, width/2 - width/4, height/2 + 50)) < 100) mode = menu;
  if ( int(dist( mouseX, mouseY, width/2 + 250, height/2 +20)) < 150) mode = game;
}
