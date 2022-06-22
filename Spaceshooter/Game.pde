void game() {
  if ( elementary == true) {
    if (frameCount % 200 == 0) objects.add(new Zerg());
  }

  if ( secondary == true) {
    if (frameCount % 200 == 0) objects.add(new Zerg());
    if (frameCount % 300 == 0) objects.add(new Protoss());
  }

  if ( undergrad == true) {
    if (frameCount % 200 == 0) objects.add(new Zerg());
    if (frameCount % 300 == 0) objects.add(new Protoss());
    if (frameCount % 600 == 0) objects.add(new Spaceship1());
  }

  if ( master == true) {
    if (frameCount % 200 == 0) objects.add(new Zerg());
    if (frameCount % 300 == 0) objects.add(new Protoss());
    if (frameCount % 1000 == 0) objects.add(new Spaceship1());
    if (frameCount % 7000 == 0) objects.add(new Spaceship2());
  }

  if ( phd == true && phdspawn == false) {
    objects.add(new Supership());
    phdspawn = true;
  }
  if ( cheat == true) {
    player1.live = 100;
  }



  objects.add(new Stars());
  background(0);

  int i = 0;
  while (i < objects.size ()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.live == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  player1.show();
  player1.act();
  if ( player1.mediccooldown > player1.medicthreshold) {
    if ( medic == true) {
      textAlign(CENTER, CENTER);
      textSize(15);
      fill(255);
      text("Med bag ready", 100, 100);
    }
    if ( teleport == true) {
      textAlign(CENTER, CENTER);
      textSize(15);
      fill(255);
      text("Teleport ready", 100, 100);
    }
  }

  if ( player1.sheildcooldown > player1.sheildthreshold) {
    if ( sheild == true) {
      textAlign(CENTER, CENTER);
      textSize(15);
      fill(255);
      text("Sheild ready", 100, 130);
    }
    if ( freeze == true) {
      textAlign(CENTER, CENTER);
      textSize(15);
      fill(255);
      text("Freeze ray ready", 100, 130);
    }
  }


  fill(255);
  textSize(15);
  textAlign(CORNER, CORNER);
  text("Lives: " + player1.live, 30, 30);
  text("Money: $" + score, 30, 60);
  textAlign(CENTER, CENTER);
  if ( player1.live <= 0) {
    mode = gameover;
  }
}
