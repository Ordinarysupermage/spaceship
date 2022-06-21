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
}
