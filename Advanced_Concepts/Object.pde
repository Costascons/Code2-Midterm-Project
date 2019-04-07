//Setting up the custom class for the instance object called Orb.
class Orb {
//Setting up of Pvector variables that will control the speed of the object
//on the canvas as well as the location on which it will be generated.
  PVector velocity, location;
//Global variables of size and color to determine the size of the balls and their fill.
  int size;
  color Color;
//Initializing function for each Orb Object.
  Orb() {
//Calling of the location and velocity variables. 
//The PVector function allows us to more easily determine how our object will move
//and at what speed, without the use of creating separate variables for x and y
//to control location and speed. Indeed, the PVector takes into account the 
//movement of an object from one point to another in its functionality by default.
//Location will control where the balls will be generated, this being from the lower
//right corner of the canvas.
    location = new PVector(width + 200, height + 200);
//The velocity will control how fast each ball will move, giving them random speeds
//using the random function.
    velocity = new PVector(random(-10,10),random(-10,10));
//Setting up of size for balls. Noticed that the greater the size, the slower the
//velocity of the balls. I chose a bigger size in order to make the balls look more 
//compressed together, as though they were a slow moving gas.
    size = 180;
//Use of the color function to give balls a transparent yellowish gas color.
    Color = color(500,300,4,random(0,4));
  }
//Custom object function called 'display' in order to control how each ball will look.  
  void display() {
    noStroke();
//Drawing of ellipse based on the Orb function.
    ellipse(location.x,location.y,size,size);
//Use of the custom color function to generate the yellowish transparent color of the balls.
    fill(Color);
  }
//Custom object function called 'move' in order to make the balls move.  
  void move(){
//Use of the add function which adds the velocity of the x and y coordinates to the location
//of the object on the canvas, allowing it to move.
//This eliminates the need for generating x and y position variables separately
//to be affected by separate x and y speeds.
    location.add(velocity);  
  }
//Custom object function called 'checkBoundaries' to control colliding and bouncing of balls.  
  void checkBoundaries() {
//If statements below to check when each ball hits a specific coordinate boundary 
//and to generate an action once this happens.
//The action here is that once the ball hits the boundary, it will change velocity in a
//negative direction, hence 'bouncing' back.
//I subtracted and added the size to the boundary points in order to make a smaller area that
//the balls will bounce off of, at the center of the canvas.
//I did this in order to make the balls move more tightly together, giving the illusion of
//some gas particles floating in the air.
    if(location.x > width - size){
      location.x = width - size;
      velocity.x *= -1; 
    }
    if(location.x < 0 + size) {
      location.x = 0 + size;
      velocity.x *= -1; 
    }
    if(location.y > height - size){
      location.y = height - size;
      velocity.y *= -1;   
    }
    if(location.y < 0 + size){
      location.y = 0 + size;
      velocity.y *= -1; 
    } 
  }

}
