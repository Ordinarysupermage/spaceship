//Jerry Feng
//2-3
//2022-05-30

Ship myShip;


boolean upkey, downkey, leftkey, rightkey, spacekey;



void setup() {
  size(600,600);
  imageMode(CENTER);
  upkey = downkey = leftkey = rightkey = spacekey = false;
  myShip = new Ship();
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();
}
