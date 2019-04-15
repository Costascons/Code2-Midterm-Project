//ArrayList<Generator> generators;

//void setup() {
//  size(800, 800);
//  generators = new ArrayList<Generator>();
//}

//void draw() {
//  background(30);
//  for (int i = 0; i < generators.size(); i++) {
//    Generator g = generators.get(i);
//    g.addParticles();
//    g.drawParticles();
//  }
//}

//void mousePressed() {
//  generators.add(new Generator(mouseX, mouseY, 80, color(255,20,60)));
//}

//class Particle {
//  float posX;
//  float posY;
//  float velX;
//  float velY;
//  float life;
//  float alpha;
//  color c;


//  Particle(float posX, float posY, float life, color c) {
//    this.posX = posX;
//    this.posY = posY;
//    this.velX = random(-2, 2);
//    this.velY = random(-2, 2);
//    this.life = life;
//    alpha = 255;
//    this.c = c;
//  }

//  void display() {
//    noStroke();
//    //fill(map(life, 80,0,0,100),  map(life,80,0,8,0));
//    fill(c, map(life, 80, 0, 8, 0));
//    //fill(noise());
//    ellipse(this.posX, this.posY, life, life);
//  }

//  void update() {
//    life-=0.75;
//    alpha -=0.75;
//    this.posX += this.velX;
//    this.posY += this.velY;

//    // check if it goes off
//    if (this.posX > width || this.posX < 0) {
//      this.velX *= -1;
//    }
//    if (this.posY > height || this.posY < 0) {
//      this.velY *= -1;
//    }
//  }
//}

//class Generator {
//  ArrayList<Particle> particles;
//  float posX;
//  float posY;
//  float rate; 
//  float life;
//  color c;

//  Generator(float posX, float posY, float life, color c) {
//    this.posX = posX;
//    this.posY = posY;
//    particles = new ArrayList<Particle>();
//    this.life = life;
//    this.c = c;
//  }

//  void addParticles() {
//    particles.add(new Particle(this.posX, this.posY, life, c));
//  }

//  void drawParticles() {
//    for (int i = 0; i < particles.size(); i++) {
//      Particle b = particles.get(i);
//      b.update();
//      b.display();
//    } 

//    for (int i = particles.size() - 1; i >= 0; i--) {
//      Particle p = particles.get(i);
//      if (p.life < 0) {
//       particles.remove(i);
//      }
//    }
//  }
//}
