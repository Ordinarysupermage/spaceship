class Ship extends GameObject {

  int live, mediccooldown, medicthreshold, shieldcooldown, shieldthreshold;
  int thresholdnumber;
  Ship() {
    x = width/2;
    y = 700;
    vx = 0;
    vy= 0;
    sizew = 30;
    sizeh = 60;
    c = #FF0000;
    live = 50;
    threshold = thresholdnumber;
    thresholdnumber = 5;
    cooldown = threshold;
    mediccooldown = medicthreshold;
    medicthreshold = 2000;
  }

  void act () {
    super.act();
    //println(score);
    cooldown++;
    mediccooldown++;
      
    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof EnemyBulletZerg) {
        if ( collidingwith(bullet)) {
          live -= 1;
          bullet.live = 0;
          if ( live == 0) {
            mode = gameover;
          }
        }
      }

      if (bullet instanceof EnemyBulletMissile1) {
        if ( collidingwith(bullet)) {
          live -=5;
          bullet.live = 0;
        }
      }
      i++;
    }






    if (upkey) {
      if ( y > 30) {
        if (!fastmove) {
          vy = -2;
        } else {
          vy = -5;
        }
      }
      if ( y < 30 ) {
        vy = 0;
      }
    }
    if (downkey) {
      if (y < height -30) {
        if (!fastmove) {
          vy = 2;
        } else {
          vy = 5;
        }
      }

      if ( y > height - 30) {
        vy = 0;
      }
    }
    if (leftkey) {
      if (x > 20) {
        if (!fastmove) {
          vx = -2;
        } else {
          vx = -5;
        }
      }
      if ( x < 20) {
        vx = 0;
      }
    }
    if (rightkey) {
      if (x < width - 20) {
        if (!fastmove) {
          vx = 2;
        } else {
          vx = 5;
        }
      }
      if ( x > width - 20) {
        vx = 0;
      }
    }
    if (spacekey && cooldown >= threshold ) {
      objects.add(new Bullet());
      cooldown = 0;
    }
    if (!morebullet) {
      thresholdnumber = 60;
    } else {
      thresholdnumber = 5;
    }
    if (!upkey && !downkey) vy *= 0.9;
    if (!leftkey && !rightkey) vx *= 0.9;
    if (cheat == true) {
      x = mouseX;
      y = mouseY;
      threshold = 0;
    } else threshold = thresholdnumber;
  }

  //object.s
  void show() {

    fill(c);
    image(stapler, x, y, sizew, sizeh);
  }
}
