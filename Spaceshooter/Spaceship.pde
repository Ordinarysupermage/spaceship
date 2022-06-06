class Ship extends GameObject {
  
  PVector direction;

  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1 );
    
  }

  void show() {
    pushMatrix();
    translate(location.x, location.y);
    noFill();
    stroke(255);
    rotate( radians(180));
    image(stapler, 0, 0);
    popMatrix();
  }

  void act () {
    
    super.act();

    //if ( velocity.x > 3 && velocity.x < - 3) velocity.x *=-1;
    //if ( velocity.y > 3 && velocity.y < -3) velocity.y *=-1;
    float v = min(velocity.mag(), 3);
    velocity.setMag(v);
    
    if (upkey) velocity.add (direction);
    if (downkey) velocity.sub (direction);
    if (leftkey) velocity.add(direction);
    if (rightkey) velocity.sub(direction);
    

    //if (!upkey) velocity.add(0, -.5, 0);
    //if (!downkey) velocity.sub (0, -.5, 0);
    //if (!leftkey) velocity.add (-0.5, 0, 0);
    //if (!rightkey) velocity.add(0.5, 0, 0);
    
  }
}
