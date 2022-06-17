class Ship extends GameObject {

  float sizew, sizeh;
  int lives;
  int cooldown, threshold, thresholdnumber;

  Ship() {
    x = width/2;
    y = height/2;
    vx = 0;
    vy= 0;
    sizew = 50;
    sizeh = 100;
    c = #FF0000;
    lives = 3;
    threshold = thresholdnumber;
    thresholdnumber = 30;
    cooldown = threshold;
  }

  void act () {
    super.act();

    cooldown++;

    if (upkey) vy = -5;
    if (downkey) vy = 5;
    if (leftkey) vx = -5;
    if (rightkey) vx = 5;
    if (spacekey && cooldown >= threshold ) {
      objects.add(new Bullet());
      cooldown = 0;
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
