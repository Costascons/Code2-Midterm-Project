//Put generator into boundary
ArrayList<Generator> generators;


void setup() {
  size(800, 800);
  generators = new ArrayList<Generator>();
  //colorMode(HSB,255,255,255);

  rectMode(CENTER);
}

void draw() {
  background(20);

  noFill();
  noStroke();
  ellipse(width/2, height/2, 200,200);
  //rect (width/2, height/2, 200, 200);

  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }
}

//boundary check
void mousePressed() {
  //  if (mouseX < width/2 + 200/2 && mouseX > width/2 - 200/2 && mouseY < height/2 + 200/2 && mouseY > height/2 - 200/2) {
    
    if(dist(width/2,height/2, mouseX, mouseY)< 200){
  generators.add(new Generator(mouseX, mouseY, 80, color(255, 20, 60)));
    }

  //  }
}
