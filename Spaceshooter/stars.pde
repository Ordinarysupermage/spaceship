class Stars extends GameObject{

  //int lives;


  Stars() {
    x = random( 0, width) ;
    y = 0;
    vx = 0;
    size = random(1, 5);
    vy = size;
    c = #FFFFFF;
    lives = 1;
  }


  void act() {
    super.act();
    if (y > height) lives = 0;
  }

  void show() {
    fill(c);
    square(x, y, size);
  }
}
