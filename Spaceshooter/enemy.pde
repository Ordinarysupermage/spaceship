int zergHit;

class Zerg extends GameObject {

  int hit;

  Zerg() {
    x = random( 30, width - 30);
    y = random( -100, -50);
    vx = 0;
    vy = 1;
    lives = 1;
    w = 50;
    h = 50;
    hit = 0;
  }

  void act() {
    super.act();
    if (y > height) {
      x = random( 30, width - 30);
      y = random( -200, -50);
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
        }
      }


      i++;
    }
  }

  void show() {

    image(zerg, x, y, w, h);
  }

  boolean collidingwith(GameObject bullet) {
    //collision detection
    if ( dist( x, y, bullet.x, bullet.y) < 70) {
    return true;
    } else return false;
  }
}
