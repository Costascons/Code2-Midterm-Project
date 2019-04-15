//doesn't work??
class CircBound {
  float posX;
  float posY;
  int radius;
  boolean isInside;
  ArrayList<Generator> generators;

  CircBound(float posX, float posY, int r) {
    this.posX = posX;
    this.posY = posY;
    this.radius = r;
    isInside = false;
    
    generators = new ArrayList<Generator>();
  }
  
  void display(){
   noFill();
   noStroke();
   ellipse(posX, posY, radius, radius);
   
    for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
    
  }
  }
  
  void hitDetect(){
   if (dist(mouseX, mouseY, posX, posY)< radius){
     //if (mousePressed){
       isInside = !isInside;
     //}
   }
  }
  
  void makeGen(){
   if (isInside == true){
     generators.add(new Generator(posX, posY, 80, color(255, 20, 60)));
   }
  }
}
