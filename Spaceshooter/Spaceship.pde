class Ship extends GameObject {

  float sizew, sizeh;
  int lives;

  Ship() {
    x = 0;
    y = 0;
    vx = 0;
    vy= 0;
    sizew = 100;
    sizeh = 200;
    c = #FF0000;
    lives = 3;
  }

  void act () {
    super.act();
    if (upkey) vy = 5;
    if (downkey) vy = -5;
    if (leftkey) vx = 5;
    if (rightkey) vx = -5;
    if (spacekey) objects.add(new Bullet());
    if (!upkey && !downkey) vy *= 0.9;
    if (!leftkey && !rightkey) vx *= 0.9;
  }

  void show() {

    fill(c);
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(180));
    image(stapler, x, y, sizew, sizeh);
    popMatrix();

  }
}
