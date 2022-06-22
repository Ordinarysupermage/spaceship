void intro() {
  introcounter++;
  if (introcounter > 1200 || mousePressed) {
    mode = menu;
  }
  imageMode(CORNER);
  movie.play();
  image(movie, 0,0);
  imageMode(CENTER);
}

void movieEvent(Movie movie) {
  movie.read();
}
