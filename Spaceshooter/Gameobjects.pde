class GameObject {

  float x, y, vx, vy, size;
  int lives, w, h;
  color c;

  GameObject() {
  }

  void act() {
    x += vx;
    y += vy;
  }
  void show() {
  }
  //return  true OR return false
}
