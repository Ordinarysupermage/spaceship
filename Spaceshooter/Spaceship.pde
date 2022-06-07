class Ship extends GameObject {

  float sizew, sizeh;
  int lives;

  Ship() {
    x = width/2;
    y = height/2;
    vx = 0;
    vy= 0;
    sizew = 50;
    sizeh = 100;
    c = #FF0000;
    lives = 3;
  }

  void act () {
    super.act();
    if (upkey) vy = -5;
    if (downkey) vy = 5;
    if (leftkey) vx = -5;
    if (rightkey) vx = 5;
    if (spacekey) objects.add(new Bullet());
    if (!upkey && !downkey) vy *= 0.9;
    if (!leftkey && !rightkey) vx *= 0.9;
    if (mousemode == true) {
      x = mouseX;
      y = mouseY;
    }
  }

  void show() {

    fill(c);
    pushMatrix();
    translate(x, y);
    rotate(radians(180));
    image(stapler, 0, 0, sizew, sizeh);
    popMatrix();
  }
}
