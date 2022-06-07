//Jerry Feng
//2-3
//2022-05-30


int mode;
final int intro = 0;
final int menu = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

boolean upkey, downkey, leftkey, rightkey, spacekey;

PImage stapler, paperclip;

Ship player1;

ArrayList<GameObject> objects; 

void setup() {
  size(1200,800);
  imageMode(CENTER);
  
  mode  = game;
  
  upkey = downkey = leftkey = rightkey = spacekey = false;
  stapler = loadImage( "stapler.png");
  paperclip = loadImage( "paperclip.png");
  
  objects = new ArrayList<GameObject>();
  player1 = new Ship();
  objects.add(player1);
}

void draw() {
  
  if ( mode == intro) intro();
  else if ( mode == game) game();
  else if ( mode == gameover) gameover();
  else if ( mode == pause) pause();
}
