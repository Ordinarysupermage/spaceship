class GameObject {

  int lives;
  PVector location;
  PVector velocity;
  PVector direction;

  GameObject() {
  }

  void act() {
    
    location.add(velocity);

    if (location.y < 25) velocity.y *=-1/10;
    if (location.y > height - 30) velocity.y *= -1/10;
    if (location.x < 10) velocity.x *= -1/10;
    if (location.x > width-10) velocity.x *= -1/10;
  }
}
