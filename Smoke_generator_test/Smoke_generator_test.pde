//This is very slow so i dont think its a good way to do it lol
//maybe we dont need cnacer position

ArrayList<CancerPosition> newCancer;

void setup() {
  size(800, 800);

  //colorMode(HSB,255,255,255);

  newCancer = new ArrayList<CancerPosition>();
  rectMode(CENTER);
}

void draw() {
  background(20);

  for (int i = 0; i < newCancer.size(); i++) {
    CancerPosition cp = newCancer.get(i);
    cp.addCancer();
    cp.makeGenerator();
  }
  //noFill();
  //rect (width/2, height/2, 200, 200);
}

//boundary check
void mousePressed() {
  //  if (mouseX < width/2 + 200/2 && mouseX > width/2 - 200/2 && mouseY < height/2 + 200/2 && mouseY > height/2 - 200/2) {
  newCancer.add(new CancerPosition(mouseX, mouseY, 80, color(255, 60, 100)));

  //  }
}
