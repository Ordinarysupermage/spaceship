class Zerg extends GameObject{
 
  
  Zerg() {
    x = random( 30, width - 30);
    y = random( -100, -50);
    vx = 0;
    vy = 1;
    lives = 1;
    w = 50;
    h = 50;
  }
  
  void act(){
    super.act();
    if (y > height) {
      x = random( 30, width - 30);
      y = random( -200, -50);
    }
    
    int i = 0;
    while ( i < obejct.size()) {
      GameObject bullet = objects.get(i);
      if (bullet instanceof Bullet) {
        if ( collidingwith(bullet)){
          //remove enemy???
        }
      }


      
      i++;
    }
  }
  
  void show() {
    
    image(zerg, x, y, w, h); 
    
  }
}
  
