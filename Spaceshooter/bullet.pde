class Bullet extends GameObject {

  float sizew, sizeh;

  Bullet() {
    x = player1.x;
    y = player1.y;
    vx = 0;
    vy = -10;
    sizew = 10;
    sizeh = 20;
    c = 225;
    lives = 1;
  }

  void act() {
    //super.act(); 
    
    y -=5;
    //if (x < 0 || x > width || y < 0 || y > height) lives = 0;
  }

  void show () {
    //println( x + "    " + y);
    image( paperclip, x, y-50, sizew, sizeh);

  }
}
