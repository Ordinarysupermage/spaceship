void game() {
  
  if (frameCount % 10 == 0) objects.add(new Zerg());
  
  objects.add(new Stars());  
  background(0);
  
  int i = 0;
  while (i < objects.size ()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  player1.show();
  player1.act();

  
  
}
