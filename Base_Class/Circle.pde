class Circle extends Boundaries {
Circle( float _x, float _y, float _w){
super (_x, _y, _w, _w);
//setColor( how could we make the boundaries of the circles not visible?)
}
  
  
void display(){
 
 ellipse(position.x, position.y, w, w); 
}
}
