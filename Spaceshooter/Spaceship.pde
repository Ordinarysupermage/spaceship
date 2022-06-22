class Ship extends GameObject {

  int live, mediccooldown, medicthreshold, sheildcooldown, sheildthreshold;
  int thresholdnumber;
  int sheildtime;
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
    medicthreshold = 2000;
    mediccooldown = medicthreshold;
    sheildthreshold = 3000;
    sheildcooldown = sheildthreshold;
  }

  void act () {
    super.act();
    //println(score);
    cooldown++;
    mediccooldown++;
    sheildcooldown++;

    if ( sheildactivate) {
      sheildtime ++;
    }

    if ( sheildtime > 60) {
      sheildtime = 0;
      sheildcooldown = 0;
      sheildactivate = false;
    }

    int i = 0;
    while ( i < objects.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof EnemyBulletZerg) {
        if ( collidingwith(bullet)) {
          if (!sheildactivate) {
            live -= 1;
            bullet.live = 0;
          }
          if (sheildactivate) {
            live += 1;
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
      if ( fluteselect == true || tubaselect == true) {
        vy = -10;
      }
    }
    if (downkey) {
      if (y < height -30) {
        if (!fastmove) {
          vy = 2;
        } else {
          vy = 5;
        }
        if ( fluteselect == true || tubaselect == true) {
          vy = 10;
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
      if ( fluteselect == true || tubaselect == true) {
        vx = -10;
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
      if ( fluteselect == true || tubaselect == true) {
        vx = 10;
      }
    }
    if (spacekey && cooldown >= threshold && !tubaselect && !fluteselect) {
      objects.add(new Bullet(x, y, 0, -10));
      cooldown = 0;
    }
    if (spacekey && cooldown >= threshold && tubaselect == true && fluteselect == true) {
      objects.add(new Bullet(x - 20, y, 0, -10));
      objects.add(new Bullet(x -10, y, 0, -10));
      objects.add(new Bullet(x, y, 0, -10));
      objects.add(new Bullet(x + 10, y, 0, -10));
      objects.add(new Bullet(x + 20, y, 0, -10));
      cooldown = 0;
    }
    if ( spacekey && cooldown >= threshold && fluteselect == true) {
      objects.add(new Bullet(x -10, y, 0, -10));
      objects.add(new Bullet(x, y, 0, -10));
      objects.add(new Bullet(x + 10, y, 0, -10));
    }
    if ( spacekey && cooldown >= threshold && tubaselect == true) {
      objects.add(new Bullet(x -5, y, 0, -10));
      objects.add(new Bullet(x + 5, y, 0, -10));
    }

    if (!morebullet) {
      thresholdnumber = 30;
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
    if ( fluteselect == true && tubaselect == true) {
      threshold = 10;
      teleport = true;
      freeze = true;
    }
    if ( fluteselect == true) {
      threshold = 10;
      teleport = true;
    }
    if ( tubaselect == true) {
      threshold = 20;
      freeze = true;
    }
  }

  //object.s
  void show() {

    fill(c);
    if ( tubaselect == true && fluteselect == true) {
      image(fighter, x, y, sizew, sizeh);
    } else {
      image(stapler, x, y, sizew, sizeh);
    }
  }
}
