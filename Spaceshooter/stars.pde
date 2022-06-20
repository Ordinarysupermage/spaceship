class Stars extends GameObject{

  //int lives;


  Stars() {
    x = random( 0, width) ;
    y = 0;
    vx = 0;
    size = random(1, 5);
    vy = size;
    c = 160;
    live = 1;
  }


  void act() {
    super.act();
    if (y > height) live = 0;
  }

  void show() {
    fill(255);
    stroke(255);
    strokeWeight(2);
    square(x, y, size);
  }
}
