int zergHit;

class Zerg extends GameObject {

  int powerup;
  Zerg() {
    x = random( 30, width - 30);
    y = random( -100, -50);
    vx = 0;
    vy = 0.8;
    live = 1;
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 120;
    powerup = 0;
  }

  void act() {
    super.act();
    if (y > height - 60) {
      live = 0;
    }

    cooldown++;
    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletZerg( x, y, 0, 3));
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
          powerup = int(random(1, 3));
        }
      }


      i++;
    }
    if ( live == 0) {
      objects.add(new Explosion( x, y, 0, 0));
    }

    if (powerup == 3) {
      objects.add(new Coin( x, y, 0, 0.1));
    }
  }

  void show() {

    image(zerg, x, y, w, h);
  }
}


class Protoss extends GameObject {

  int powerup;

  Protoss() {
    x = random( 30, width - 30);
    y = random( -100, -50);
    vx = 0;
    vy = 0.5;
    live = 10;
    w = 50;
    h = 50;
    cooldown = threshold;
    threshold = 360;
    powerup = 0;
  }

  void act() {
    super.act();
    if (y > height + 60) {
      live = 0;
    }

    cooldown++;
    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletProtoss(x, y, 0, 0.8));
      cooldown = 0;
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live -= 1;
          bullet.live = 0;
          score += 1;
          if ( live == 0) {
            objects.add(new Explosion( x, y, 0, 0));
            powerup = int(random(1, 3));
          }
        }
      }


      i++;
    }

    if (powerup == 3) {
      objects.add(new Coin( x, y, 0, 0.1));
    }
  }

  void show() {

    image(protoss, x, y, w, h);
  }
}

class Spaceship1 extends GameObject {

  int bulletraincooldown, threshold2, bulletcounter;

  Spaceship1() {

    x = random( 100, width - 100);
    y = random( -100, -50);
    vx = 0;
    vy = 0.1;
    live = 50;
    w = 100;
    h = 100;
    cooldown = threshold;
    bulletraincooldown = threshold2;
    threshold = 5000;
    threshold = 540;
    bulletcounter = 0;
  }

  void act() {
    super.act();
    if (y > height + 110) {
      live = 0;
    }

    cooldown++;
    bulletraincooldown++;
    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletSpaceship1(x, y, 0, 0.5));
      cooldown = 0;
    }

    if ( bulletraincooldown >= threshold2 && bulletcounter < 50) {
      objects.add(new EnemyBulletZerg( random( 30, width - 30), 0, 0, 5));
      bulletcounter++;
    }

    if (bulletcounter > 50) {
      bulletraincooldown = 0;
      bulletcounter = 0;
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live -= 1;
          bullet.live = 0;
          score += 1;
        }
      }


      i++;
    }
  }

  void show() {

    image(spaceship1, x, y, w, h);
  }
}


class Spaceship2 extends GameObject {

  int missileCooldown, missilethreshold;

  Spaceship2() {

    x = width/2;
    y = random( -100, -50);
    vx = 0;
    vy = 0.05;
    live = 200;
    w = 200;
    h = 200;
    cooldown = threshold;
    threshold = 30;
    missileCooldown = missilethreshold;
    missilethreshold = 120;
  }

  void act() {
    super.act();
    if (y > height + 310) {
      live = 0;
    }

    cooldown++;
    missileCooldown++;

    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletZerg( x, y, 0, 3));
      cooldown = 0;
    }

    if ( missileCooldown > missilethreshold) {
      x = player1.x;
      objects.add(new EnemyBulletMissile1( x, y, 0, 5));
      missileCooldown = 0;
    }


    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live -= 1;
          bullet.live = 0;
          score += 1;
        }
      }



      i++;
    }
  }

  void show() {

    image(spaceship2, x, y, w, h);
  }
}

class Supership extends GameObject {

  int missileCooldown, missilethreshold, cooldown2, threshold2, lazercooldown, lazerthreshold, lazer2, lazerthres2, trackingcooldown, trackingthreshold;

  Supership() {

    x = width/2;
    y = 150;
    vx = 0;
    vy = 0;
    live = 500;
    w = 300;
    h = 300;
    cooldown = threshold;
    threshold = 60;
    cooldown = threshold2;
    threshold2 = 1000;
    missileCooldown = missilethreshold;
    missilethreshold = 120;
    lazercooldown = lazerthreshold;
    lazerthreshold = 300;
    lazer2 = lazerthres2;
    lazerthres2 = 500;
    trackingcooldown = trackingthreshold;
    trackingthreshold = 300;
  }

  void act() {
    super.act();
    cooldown++;
    cooldown2++;
    missileCooldown++;
    lazercooldown++;
    lazer2++;
    trackingcooldown++;

    if ( cooldown >= threshold) {
      objects.add(new EnemyBulletSpaceship1( player1.x, -50, 0, 1));
      cooldown = 0;
    }

    if ( cooldown2 >= threshold2) {
      objects.add(new Spaceship1());
      cooldown2 = 0;
    }

    if ( missileCooldown > missilethreshold) {
      objects.add(new EnemyBulletMissile1( player1.x, -10, 0, 5));
      missileCooldown = 0;
    }

    if (lazercooldown > lazerthreshold) {
      objects.add(new Lazer(random(100, 1100), -10, 0, 10));
      lazercooldown = 0;
    }

    if (lazercooldown > lazerthreshold) {
      objects.add(new Lazer(random(100, 1100), -10, 0, 10));
      lazercooldown = 0;
    }

    if (lazer2 > lazerthres2) {
      stroke(green);
      objects.add(new Lazer2(x, y+20, 0, 5));
      lazer2 = 0;
    }

    if (trackingcooldown > trackingthreshold) {
      objects.add(new EnemyBulletMissile2(-50, random( player1.y - 20, player1.y + 20), 15, 0));
      trackingcooldown = 0;
    }


    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)) {
          //remove enemy???
          live -= 1;
          bullet.live = 0;
          score += 1;
          if ( live == 0) {
            gamebeaten = true;
            mode = gameover;
          }
        }
      }



      i++;
    }
  }

  void show() {

    image(supership, x, y, w, h);
  }
}
