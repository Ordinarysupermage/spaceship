void gameover() {
  background(0);
  textAlign(CENTER, CENTER);
  if ( gamebeaten == true) {
    textSize(100);
    text("Respect++", width/2, height/2);
    image( menuicon, 100, 700, 100, 100);
  } else {
    textSize(100);
    text("Gameover", width/2, height/2);
    image( menuicon, 100, 700, 100, 100);
  }
}
