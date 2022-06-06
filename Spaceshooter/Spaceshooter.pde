//Jerry Feng
//2-3
//2022-05-30

Ship myShip;


boolean upkey, downkey, leftkey, rightkey, spacekey;

PImage stapler;

void setup() {
  fullScreen();
  imageMode(CENTER);
  upkey = downkey = leftkey = rightkey = spacekey = false;
  myShip = new Ship();
  stapler = loadImage( "stapler.png");
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();
}
