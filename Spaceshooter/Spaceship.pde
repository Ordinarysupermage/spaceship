
class Ship extends GameObject {
  
  PVector directiony, directionx;

  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    directiony = new PVector(0, -0.1 );
    directionx = new PVector(-0.1, 0);
  }

  void show() {
    pushMatrix();
    translate(location.x, location.y);
    noFill();
    stroke(255);
    rotate( radians(-90));
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }

  void act () {
    
    super.act();

    if ( velocity.x > 3 && velocity.x < - 3) velocity.x *=-1;
    if ( velocity.y >3 && velocity.y < -3) velocity.y *=-1;
    if (upkey) velocity.add (directiony.y /5);
    if (downkey) velocity.sub (direction.y /5);
    if (leftkey) velocity.add(directionx.x /5);
    if (rightkey) velocity.sub(directionx.x /5);
    

    //if (!upkey) velocity.add(0, -.5, 0);
    //if (!downkey) velocity.sub (0, -.5, 0);
    //if (!leftkey) velocity.add (-0.5, 0, 0);
    //if (!rightkey) velocity.add(0.5, 0, 0);
    
  }
}
