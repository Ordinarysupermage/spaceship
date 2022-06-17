//Jerry Feng
//2-3
//2022-05-30


int mode;
final int intro = 0;
final int menu = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
final int shop = 5;
final int backpack = 6;

boolean elementary, secondary, undergrad, master , phd;

color red = #FF0000;
color green = #00FF00;

boolean upkey, downkey, leftkey, rightkey, spacekey, cheat;

PImage stapler, paperclip, zerg;

Ship player1;
Zerg z1, z2, z3;

ArrayList<GameObject> objects; 

void setup() {
  size(1200,800);
  imageMode(CENTER);
  rectMode(CENTER);
  
  mode  = game;
  
  upkey = downkey = leftkey = rightkey = spacekey = elementary = secondary = undergrad= master= phd = false;
  stapler = loadImage( "stapler.png");
  paperclip = loadImage( "paperclip.png");
  zerg = loadImage( "zerg.png");
  
  
  
  objects = new ArrayList<GameObject>();
  player1 = new Ship();
  objects.add(player1);
 

}

void draw() {
  
  if ( mode == intro) intro();
  else if ( mode == game) game();
  else if ( mode == gameover) gameover();
  else if ( mode == pause) pause();
  else if ( mode == menu) menu();
  else if ( mode == shop) shop();
  else if ( mode == backpack) backpack();
}
