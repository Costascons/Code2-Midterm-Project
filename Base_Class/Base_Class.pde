Circle c;
int numCircles = 27;
ArrayList<Boundaries> shape = new ArrayList <Boundaries>();

void setup(){
 size(500,500);
 
 c = new Circle(100,150,40);
 noStroke();
 
 for (int i=0; i < numCircles; i ++){
  shape.add(new Circle(position.x, position.y, 40)); 
 }
}

void draw(){
background(250);
for (Boundaries b : shape){
 b.display(); 
}
}

void mousePressed(){
 for(int i =0; i < shape.size(); i ++){
 Boundaries b = shape.get(i);
 
 if(b.hitDetection(mouseX, mouseY)){
   //Play particle system from Particles class
 }
 }
}
