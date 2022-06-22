class Bullet extends GameObject {

  Bullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 1);
    //x = player1.x;
    //y = player1.y;
    //vx = 0;
    //vy = -10;
    sizew = 10;
    sizeh = 20;
    c = 225;
    //live = 1;
  }

  void act() {
    //super.act();
    if ( y < 10) {
      live = 0;
    }
    y -=5;
    //if (x < 0 || x > width || y < 0 || y > height) lives = 0;
  }

  void show () {
    //println( x + "    " + y);
    image( paperclip, x, y-30, sizew, sizeh);
  }
}

class Missile1 extends GameObject {

  Missile1(float x, float y, float vx, float vy) {
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



    //if ( collidingwith(Supership)) {
    //  //remove enemy???
    //  live = 0;
    //  if ( fluteselect == true || tubaselect == true) {
    //    supership.live -= 10;
    //  }
    //  if ( fluteselect == true && tubaselect == true) {
    //    supership.live -= 30;
    //  }
    //  if ( live == 0) {
    //    objects.add(new Explosion( x, y, 0, 0));
    //  }
    //}
  }



  void show() {

    image(missile, x, y, w, h);
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

  int powerup;
  EnemyBulletProtoss(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 1);
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 180;
    powerup = 0;
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
          powerup = int(random(1, 7));
          if ( live == 0) {
            objects.add(new Explosion( x, y, 0, 0));
          }
        }
      }


      i++;
    }
    if (freezeactivate == true) {
      live = 0;
      player1.sheildcooldown = 0;
      freezeactivate = false;
    }
    if (powerup == 3) {
      objects.add(new Coin( x, y, 0, 0.1));
    }
  }
  void show() {

    image(zerg, x, y, w, h);
  }
}

class EnemyBulletSpaceship1 extends GameObject {

  int powerup;

  EnemyBulletSpaceship1(float x, float y, float vx, float vy) {
    super( x, y, vx, vy, 5);
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 180;
    powerup = 0;
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
          powerup = int(random(1, 7));
          if ( live == 0) {
            objects.add(new Explosion( x, y, 0, 0));
          }
        }
      }


      i++;
    }
    if (freezeactivate == true) {
      println("1");
      live = 0;
      player1.sheildcooldown = 0;
      freezeactivate = false;
    }
    if (powerup == 3) {
      objects.add(new Coin( x, y, 0, 0.1));
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


    if ( collidingwith(player1)) {
      //remove enemy???
      live = 0;
      player1.live -= 10;
      if ( live == 0) {
        objects.add(new Explosion( x, y, 0, 0));
      }
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
    if (x > width + 60) {
      live = 0;
    }




    if ( collidingwith(player1)) {
      live = 0;
      player1.live -= 10;
      if ( live == 0) {
        objects.add(new Explosion( x, y, 0, 0));
      }
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

    if ( player1.x > x -15 && player1.x < x + 15) {
      live = 0;
      player1.live -= 10;
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
    if ( player1.x > x -15 && player1.x < x + 15) {
      live = 0;
      player1.live -= 20;
    }
  }
  void show() {
    stroke(green);
    strokeWeight(10);
    line(x, y, x, finaly);
  }
}

class Coin extends GameObject {

  Coin(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 1);
    w = 30;
    h = 30;
  }

  void act() {
    super.act();

    if ( collidingwith(player1)) {
      live = 0;
      shopcoin += 1;
    }
  }

  void show() {
    image(coin, x, y, w, h);
  }
}

class Explosion extends GameObject {

  int counter;

  Explosion(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, 1);
    w = 30;
    h = 30;
    counter = 0;
  }

  void act() {
    counter++;
    //println("0");

    if ( collidingwith(player1)) {
      player1.live -= 1;
    }

    if ( counter > 30) {
      live = 0;
    }
    w++;
    h++;
  }

  void show() {
    image(explosion, x, y, w, h);
  }
}
