class CancerPosition {
  ArrayList<Generator> generators;
  float posX;
  float posY;
  float life;
  color c;
  
  CancerPosition(float posX, float posY, float life, color c){
   this.posX = posX;
   this.posY = posY;
   generators = new ArrayList<Generator>();
   this.life = life;
   this.c = c;
  }
  
  void addCancer(){
    generators.add(new Generator(posX, posY, life, c));
  }
  
  void makeGenerator(){
    for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
    g.update();
  }
  
    for (int i = generators.size() - 1; i >= 0; i--) {
      Generator g = generators.get(i);
      if (g.life < 0) {
       generators.remove(i);
      }
    }
  }
}
