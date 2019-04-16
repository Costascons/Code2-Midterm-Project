//doesn't work??
class CircBound {
  float posX;
  float posY;
  int radius;
  boolean isInside;
  float life;
  color col;
  //ArrayList<Generator> generators;
  Generator g; //= new Generator(posX, posY, life, col);

  CircBound(float posX, float posY, int r, float life, color col) {
    this.posX = posX;
    this.posY = posY;
    this.radius = r;
    isInside = false;
    this.life = life;
    this.col = col;
    
    //generators = new ArrayList<Generator>();
  }
  
  void display(){
   noFill();
   noStroke();
   ellipse(posX, posY, radius, radius);
   
  //  for (int i = 0; i < generators.size(); i++) {
  //  Generator g = generators.get(i);
  //  g.addParticles();
  //  g.drawParticles();
  
  if (isInside){
   g.addParticles();
   g.drawParticles();
  }
    
  //}
  }
  
  void hitDetect(){
   if (dist(mouseX, mouseY, posX, posY)< radius){
     //if (mousePressed){
       isInside = !isInside;
       makeGen();
     //}
   }
  }
  
  void makeGen(){
   //if (isInside == true){
     //generators.add(new Generator(posX, posY, 80, color(255, 20, 60)));
       g = new Generator(posX, posY, life, col);
   //}
  }
}
