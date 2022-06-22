import processing.video.*;

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

int score = 0;
int introcounter, startw, starth, shopcoin;
boolean elementary, secondary, undergrad, master, phd, phdspawn;

color red = #FF0000;
color green = #00FF00;

boolean upkey, downkey, leftkey, rightkey, spacekey, cheat;
boolean elementarycomp, secondarycomp, undergradcomp, mastercomp, phdcomp;
boolean tubaselect, fluteselect, medic, morebullet, fastmove, freeze, teleport, sheild, sheildactivate, freezeactivate;
boolean gamebeaten, medicpressed, flutepurchased, tubapurchased;

PImage stapler, paperclip, zerg, protoss, spaceship1, spaceship2, supership, missile, missile2, coin, explosion, start, tuba, flute;
PImage medicicon, morebulleticon, fastmoveicon, sheildicon, teleporticon, freezeicon, menuicon;
PFont star;


Ship player1;
Zerg z1, z2, z3;

Movie movie;


ArrayList<GameObject> objects;

void setup() {
  size(1200, 800);
  imageMode(CENTER);
  rectMode(CENTER);

  mode  = shop;
  score = 1000000;

  upkey = downkey = leftkey = rightkey = spacekey = elementary = secondary = undergrad= master= phd= phdspawn= false;
  tubaselect = fluteselect = medic = morebullet = fastmove = freeze = teleport = sheild = false;
  stapler = loadImage( "stapler.png");
  paperclip = loadImage( "paperclip.png");
  zerg = loadImage( "zerg.png");
  protoss = loadImage("protoss.png");
  spaceship1 = loadImage("spaceship1.png");
  spaceship2 = loadImage("spaceship2.png");
  supership = loadImage("supership.png");
  missile = loadImage("missile.png");
  missile2 = loadImage("missile2.png");
  coin = loadImage("coin.png");
  explosion = loadImage("explosion.png");
  start = loadImage("start.png");
  tuba = loadImage("tuba.png");
  flute = loadImage("flute.png");
  medicicon = loadImage("medic.png");
  morebulleticon = loadImage("bullet.png");
  fastmoveicon = loadImage("run.png");
  sheildicon = loadImage("sheild.png");
  teleporticon = loadImage("teleport.png");
  freezeicon = loadImage("freeze.png");
  menuicon = loadImage("menu.png");


  objects = new ArrayList<GameObject>();
  player1 = new Ship();
  objects.add(player1);
  movie = new Movie( this, "Intro.mp4");

  star = createFont("star.TTF", 70);
  textFont(star);

  startw = 300;
  starth = 150;
}

void draw() {

  if ( mode == intro) intro();
  else if ( mode == game) game();
  else if ( mode == gameover) gameover();
  else if ( mode == pause) pause();
  else if ( mode == menu) menu();
  else if ( mode == shop) shop();
}
