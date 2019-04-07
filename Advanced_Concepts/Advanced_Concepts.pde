
//Array list created for Orb object in order to generate the balls
//in the sketch.
ArrayList<Orb> orbs = new ArrayList<Orb>();
//Global variable to determine how many balls will be generated.
int numOrbs = 500;


void setup(){
  size(600, 600);
//For loop in order to store the value of how many balls will be generated.
  for(int i = 0; i < numOrbs; i++){
    orbs.add(new Orb()); 
  }
}

void draw(){
  
  background(0);
//Below a for loop calls the functions that were created in the Object tab so that they may be generated here
//and applied and drawn onto our actual canvas.
  for(Orb o : orbs){
    o.move();
    o.checkBoundaries();
    o.display(); 
  }  
}
