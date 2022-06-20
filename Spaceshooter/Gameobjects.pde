class GameObject {

  float x, y, vx, vy, size;
  float sizew, sizeh;
  int live, w, h;
  color c;
  int cooldown, threshold;

  GameObject() {
    x = 0;
    y = 0;
    vx = 0;
    vy = 0;
  }
  
  GameObject(float x, float y, float vx, float vy, int live) {
    this.x = x; 
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.live = live;
  }

  void act() {
    x += vx;
    y += vy;
  }
  void show() {
  }
  //return  true OR return false

  boolean collidingwith(GameObject obj) {
    //collision detection
    if ( dist( x, y, obj.x, obj.y) < 20) {
      return true;
    } else return false;
  }
}
