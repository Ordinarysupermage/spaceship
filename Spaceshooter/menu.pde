void menu() {
  background(0);

  textAlign(CENTER, CENTER);
  textSize(100);
  fill(255);
  text("Paper Clip school", width/2, 50);
  textSize( 50);
  text("Levels:", 100, 200);
  rectMode(CENTER);
  textSize(20);
  stroke(255);
  fill(255);
  if ( mouseX > 200 && mouseX < 300 && mouseY > 185 && mouseY < 235) {
    stroke(red);
    strokeWeight(5);
  } else {
    stroke(255);
    strokeWeight(2);
  }
  if ( elementary == true) fill(green);
  else fill(255);
  rect(250, 210, 100, 50);

  if ( mouseX > 350 && mouseX < 450 && mouseY > 185 && mouseY < 235) {
    strokeWeight(5);
    stroke(red);
  } else {
    stroke(255);
    strokeWeight(2);
  }
  if ( secondary == true) fill(green);
  else fill(255);
  rect(400, 210, 100, 50);

  if ( mouseX > 500 && mouseX < 600 && mouseY > 185 && mouseY < 235) {
    strokeWeight(5);
    stroke(red);
  } else {
    stroke(255);
    strokeWeight(2);
  }
  if ( undergrad == true) fill(green);
  else fill(255);
  rect(550, 210, 100, 50);

  if ( mouseX > 650 && mouseX < 750 && mouseY > 185 && mouseY < 235) {
    strokeWeight(5);
    stroke(red);
  } else {
    stroke(255);
    strokeWeight(2);
  }
  if ( master == true) fill(green);
  else fill(255);
  rect( 700, 210, 100, 50);

  if ( mouseX > 800 && mouseX < 900 && mouseY > 185 && mouseY < 235) {
    strokeWeight(5);
    stroke(red);
  } else {
    stroke(255);
    strokeWeight(2);
  }
  if ( phd == true) fill(green);
  else fill(255);
  rect( 850, 210, 100, 50);

  fill(0);
  text("Elementary", 250, 205);
  text("Secondary", 400, 205);
  text("Undergrad", 550, 205);
  text("Masters", 700, 205);
  text("PHD", 850, 205);

  if ( mouseX > 75 && mouseX < 225 && mouseY > 662 && mouseY < 738) {
    stroke(red);
    strokeWeight(5);
  } else {
    stroke(255);
    strokeWeight(2);
  }
  rect(150, 700, 150, 75);
  
  fill(0);
  text("shop", 150, 700);
}




void menuSelect() {
  if ( mouseX > 200 && mouseX < 300 && mouseY > 185 && mouseY < 235) {
    elementary = true;
    secondary = false;
    undergrad = false;
    master = false;
    phd = false;
  }

  if ( mouseX > 350 && mouseX < 450 && mouseY > 185 && mouseY < 235) {
    elementary = false;
    secondary = true;
    undergrad = false;
    master = false;
    phd = false;
  }
  if ( mouseX > 500 && mouseX < 600 && mouseY > 185 && mouseY < 235) {
    elementary = false;
    secondary = false;
    undergrad = true;
    master = false;
    phd = false;
  }
  if ( mouseX > 650 && mouseX < 750 && mouseY > 185 && mouseY < 235) {
    elementary = false;
    secondary = false;
    undergrad = false;
    master = true;
    phd = false;
  }
  if ( mouseX > 800 && mouseX < 900 && mouseY > 185 && mouseY < 235) {
    elementary = false;
    secondary = false;
    undergrad = false;
    master = false;
    phd = true;
  }
  if ( mouseX > 75 && mouseX < 225 && mouseY > 662 && mouseY < 738) {
    shopmenu = true;
  }
}
