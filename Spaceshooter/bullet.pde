class Bullet extends GameObject {

  float sizew, sizeh;

  Bullet() {
    x = player1.x;
    y = player1.y;
    vx = 0;
    vy = -10;
    sizew = 50;
    sizeh = 100;
    c = 225;
    lives = 1;
  }

  void act() {
    //super.act(); 
    
    y +=2;
    //if (x < 0 || x > width || y < 0 || y > height) lives = 0;
  }

  void show () {
    //println( x + "    " + y);
    image( paperclip, x, y, sizew, sizeh);

  }
}
