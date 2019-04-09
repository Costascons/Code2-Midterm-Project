ArrayList<Generator> generators;

void setup() {
  size(800, 800);
  generators = new ArrayList<Generator>();
  //colorMode(HSB,255,255,255);

  rectMode(CENTER);
}

void draw() {
  background(255);
  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }

  noFill();
  rect (width/2, height/2, 200, 200);
}

//boundary check
void mousePressed() {
  if (mouseX < width/2 + 200/2 && mouseX > width/2 - 200/2 && mouseY < height/2 + 200/2 && mouseY > height/2 - 200/2) {

    generators.add(new Generator(mouseX, mouseY));
  }
}
