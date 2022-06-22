void shop() {
  background(0);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("Shop", width/2, 100);
  strokeWeight(2);
  textSize(20);
  textAlign(CORNER, CORNER);
  text("Money: $ " + score, 20, 50);
  text("Gems: $ " + shopcoin, 20, 100);
  textAlign(CENTER, CENTER);
  text("Q key: $500 each", 120, 250);
  text("E key: $1,000 each", 120, 380);
  noFill();
  stroke(255);
  if ( dist( mouseX, mouseY, 300, 250) < 50) circle(300, 250, 100);
  if ( dist( mouseX, mouseY, 600, 250) < 50) circle(600, 250, 100);
  if ( dist( mouseX, mouseY, 900, 250) < 50) circle(900, 250, 100);
  if ( dist( mouseX, mouseY, 300, 380) < 50) circle(300, 380, 100);
  if ( dist( mouseX, mouseY, 600, 380) < 50) circle(600, 380, 100);
  if ( dist( mouseX, mouseY, 900, 380) < 50) circle(900, 380, 100);
  if ( dist( mouseX, mouseY, 300, 650) < 150) circle( 300, 650, 275);
  if ( dist( mouseX, mouseY, 900, 650) < 150) circle( 900, 650, 275);

  stroke(255);
  if (medic == true) {
    circle(300, 250, 100);
  }
  if ( fastmove == true) {
    circle(600, 250, 100);
  }
  if ( teleport == true) {
    circle(900, 250, 100);
  }
  if ( morebullet == true) {
    circle(300, 380, 100);
  }
  if ( sheild == true) {
    circle(600, 380, 100);
  }
  if ( freeze == true) {
    circle(900, 380, 100);
  }
  if ( fluteselect == true) {
    stroke(255);
    circle( 300, 650, 275);
  }
  if ( tubaselect == true) {
    circle( 900, 650, 275);
  }

  image( medicicon, 300, 250, 100, 50);
  image( fastmoveicon, 600, 250, 100, 50);
  image( morebulleticon, 300, 380, 100, 50);
  image( sheildicon, 600, 380, 100, 50);
  image( teleporticon, 900, 250, 100, 50);
  image( freezeicon, 900, 380, 100, 50);

  textSize(50);
  text("Gem Shop", width/2, 480);
  image( flute, 300, 650, 300, 150);
  image( tuba, 900, 650, 200, 200);
  image( menuicon, 50, 750, 75, 75);
  textSize(30);
  text("500 gems", 300, 750);
  text("500 gems", 900, 750);
}

void shopselect() {

  if ( dist( mouseX, mouseY, 50, 750) < 38) {
    mode = menu;
  }

  if ( dist( mouseX, mouseY, 300, 250) < 50) {
    if ( score > 500) {
      medic = true;
      fastmove = false;
      teleport = false;
      score -= 500;
    }
  }
  if ( dist( mouseX, mouseY, 600, 250) < 50) {
    if ( score > 500) {
      medic = false;
      fastmove = true;
      teleport = false;
      score -= 500;
    }
  }
  if ( dist( mouseX, mouseY, 900, 250) < 50) {
    if ( score > 500) {
      medic = false;
      fastmove = false;
      teleport = true;
      score -= 500;
    }
  }
  if ( dist( mouseX, mouseY, 300, 380) < 50) {
    if ( score > 1000) {
      morebullet = true;
      sheild = false;
      freeze = false;
      score -= 1000;
    }
  }
  if ( dist( mouseX, mouseY, 600, 380) < 50) {
    if ( score > 500) {
      morebullet = false;
      sheild = true;
      freeze = false;
      score -= 1000;
    }
  }
  if ( dist( mouseX, mouseY, 900, 380) < 50) {
    if ( score > 500) {
      morebullet = false;
      sheild = false;
      freeze = true;
      score -= 1000;
    }
  }
  if ( dist( mouseX, mouseY, 300, 650) < 150) {
    if ( shopcoin > 500) {
      fluteselect = true;
      shopcoin -= 500;
    }
  }
  if ( dist( mouseX, mouseY, 900, 650) < 150) {
    if ( shopcoin > 500) {
      tubaselect = true;
      shopcoin -= 500;
    }
  }
  //if ( fluteselect == true && dist( mouseX, mouseY, 300, 650) < 150) {
  //  fluteselect = false;
  //}
  //if ( tubaselect == true && dist( mouseX, mouseY, 900, 650) < 150) {
  //  tubaselect = false;
  //}
  //if ( dist( mouseX, mouseY, 300, 650) < 150 && flutepurchased == true) {
  //  fluteselect = true;
  //}
  //if ( dist( mouseX, mouseY, 900, 650) < 150 && tubapurchased == true) {
  //  tubaselect = true;
  //}
}
