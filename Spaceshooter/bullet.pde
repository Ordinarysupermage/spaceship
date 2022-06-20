class Bullet extends GameObject {

  Bullet() {
    x = player1.x;
    y = player1.y;
    vx = 0;
    vy = -10;
    sizew = 10;
    sizeh = 20;
    c = 225;
    live = 1;
  }

  void act() {
    //super.act();

    y -=5;
    //if (x < 0 || x > width || y < 0 || y > height) lives = 0;
  }

  void show () {
    //println( x + "    " + y);
    image( paperclip, x, y-30, sizew, sizeh);
  }
}

class EnemyBulletZerg extends GameObject {

  EnemyBulletZerg(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
  }

  void act() {
    super.act();
    if ( y > height + 60) {
      live = 0;
    }
  }

  void show () {

    image( paperclip, x, y, 15, 25);
  }
}

class EnemyBulletProtoss extends GameObject {

  EnemyBulletProtoss(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 180;
  }

  void act() {
    super.act();
    if (y > height + 60) {
      live = 0;
    }

    cooldown++;
    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletZerg( x, y, 0, 5));
      cooldown = 0;
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live = 0;
          bullet.live = 0;
          score += 1;
        }
      }


      i++;
    }
  }
   void show() {

    image(zerg, x, y, w, h);
  }
}

class EnemyBulletSpaceship1 extends GameObject {

  EnemyBulletSpaceship1(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 2);
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 180;
  }

  void act() {
    super.act();
    if (y > height + 60) {
      live = 0;
    }

    cooldown++;
    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletProtoss( x, y, 0, 0.8));
      cooldown = 0;
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live = 0;
          bullet.live = 0;
          score +=1;
        }
      }


      i++;
    }
  }
   void show() {

    image(protoss, x, y, w, h);
  }
}

class EnemyBulletMissile1 extends GameObject {

  EnemyBulletMissile1(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 180;
  }

  void act() {
    super.act();
    if (y > height + 60) {
      live = 0;
    }

    cooldown++;
    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletProtoss( x, y, 0, 0.8));
      cooldown = 0;
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Ship) {
      if ( collidingwith(bullet)) {
         //remove enemy???
          live = 0;
          player1.live -= 10;
        }
      }


      i++;
    }
   }
   void show() {

    image(missile, x, y, w, h);
  }
}

class EnemyBulletMissile2 extends GameObject {

  EnemyBulletMissile2(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
    w = 50;
    h = 50;
  }

  void act() {
    super.act();
    y = player1.y;
    if (y > height + 60) {
      live = 0;
    }


    int i = 0;
    while ( i < objects.size()) {
      GameObject ship = objects.get(i);
      if (ship instanceof Ship) {
      if ( collidingwith(ship)) {
         //remove enemy???
          live = 0;
          player1.live -= 5;
        }
      }


      i++;
    }
   }
   void show() {

    image(missile2, x, y, w, h);
  }
}


class Lazer extends GameObject {

  float finaly;
  
  Lazer(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
    w = 50;
    h = 50;
  }

  void act() {
    finaly += vy;
    if (finaly > height + 500) {
      live = 0;
    }


    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Ship) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live = 0;
          player1.live -= 5;
        }
      }


      i++;
    }
   }
   void show() {
    stroke(red);
    strokeWeight(10);
    line(x, y, x, finaly);
    
  }
}

class Lazer2 extends GameObject {

  float finaly;
  
  Lazer2(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
    w = 50;
    h = 50;
    finaly = y;
  }

  void act() {
    finaly += vy;
    if (finaly > height + 500) {
      live = 0;
    }


    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Ship) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live = 0;
          player1.live -= 5;
        }
      }


      i++;
    }
   }
   void show() {
    stroke(green);
    strokeWeight(10);
    line(x, y, x, finaly);
    
  }
}
