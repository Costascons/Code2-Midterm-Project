class Generator {
  ArrayList<Particle> particles;
  float posX;
  float posY;
  float rate; 
  float life;
  color c;

  Generator(float posX, float posY, float life, color c) {
    this.posX = posX;
    this.posY = posY;
    particles = new ArrayList<Particle>();
    this.life = life;
    this.c = c;
  }

  void addParticles() {
    particles.add(new Particle(this.posX, this.posY, life, c));
  }

  void drawParticles() {
    for (int i = 0; i < particles.size(); i++) {
      Particle b = particles.get(i);
      b.update();
      b.display();
    } 

    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      if (p.life < 0) {
       particles.remove(i);
      }
    }
  }
  
  void update(){
   life--; 
  }
}
