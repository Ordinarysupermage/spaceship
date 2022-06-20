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

int score;
boolean elementary, secondary, undergrad, master , phd, phdspawn;

color red = #FF0000;
color green = #00FF00;

boolean upkey, downkey, leftkey, rightkey, spacekey, cheat;
boolean elementarycomp, secondarycomp, undergradcomp, mastercomp, phdcomp;

PImage stapler, paperclip, zerg, protoss, spaceship1, spaceship2, supership, missile, missile2;

Ship player1;
Zerg z1, z2, z3;

ArrayList<GameObject> objects; 

void setup() {
  size(1200,800);
  imageMode(CENTER);
  rectMode(CENTER);
  
  mode  = game;
  
  upkey = downkey = leftkey = rightkey = spacekey = elementary = secondary = undergrad= master= phd= phdspawn= false;
  stapler = loadImage( "stapler.png");
  paperclip = loadImage( "paperclip.png");
  zerg = loadImage( "zerg.png");
  protoss = loadImage("protoss.png");
  spaceship1 = loadImage("spaceship1.png");
  spaceship2 = loadImage("spaceship2.png");
  supership = loadImage("supership.png");
  missile = loadImage("missile.png");
  missile2 = loadImage("missile2.png");
  
  objects = new ArrayList<GameObject>();
  player1 = new Ship();
  objects.add(player1);
  phd = true;
 

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
