int numBounds = 27;
float emitOne= 3;
float emitTwo = 1;
float emitThree = 0.5;
float emitFour = 0.2;
//make green as constant
int g = color (0, 255, 0);
int boundRadius = 50;
int  particleRadius = 70;
int maxData = 51020;

//array of dat
//color = map(arrayofdata at [], 0 , maxNumber of data, 0 , 200), map..

//CircBound[] yay = new CircBound[27];

//CircBound c = new CircBound(400,153,200, 80, color(120,120,41), emitOne);
//picked one number from the data and mapped it to red and blue value
//maybe this can be a loop?
CircBound c1 = new CircBound(404, 159, boundRadius, particleRadius, color(map(17760, 0, maxData, 255, 0), g, map(17760, 0, maxData, 0, 255)), emitOne);
CircBound c2 = new CircBound(416, 196, boundRadius, particleRadius, color(map(16080, 0, maxData, 255, 0), g, map(16080, 0, maxData, 0, 255)), emitOne);
//CircBound c3 = new CircBound(409, 214, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c4 = new CircBound(391, 222, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c5 = new CircBound(398, 238, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c6 = new CircBound(408, 228, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c7 = new CircBound(422, 229, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c8 = new CircBound(445, 296, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c9 = new CircBound(365, 294, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c10 = new CircBound(381, 261, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c11= new CircBound(345, 263, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c12= new CircBound(363, 293, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c13 = new CircBound(318, 361, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c14 = new CircBound(369, 361, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c15 = new CircBound(432, 351, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c16 = new CircBound(444, 371, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c17 = new CircBound(431, 380, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c18 = new CircBound(428, 420, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c19 = new CircBound(464, 340, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c20 = new CircBound(493, 421, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c21 = new CircBound(370, 417, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c22 = new CircBound(358, 414, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c23 = new CircBound(350, 464, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c24 = new CircBound(384, 459, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c25 = new CircBound(453, 476, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c26 = new CircBound(411, 519, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);
//CircBound c27 = new CircBound(416, 478, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);

PImage anatomy;
Table cancerData;

void setup() {
  size(800, 800);
  //colorMode(HSB,255,255,255);

  rectMode(CENTER);

  size(800, 800);
  anatomy = loadImage("Anatomy Outline.png");  

  cancerData = loadTable("Cancer Data 2019.csv", "header"); 
  println(cancerData.getRowCount() + " total rows in cancerData");

  TableRow tr = cancerData.findRow("Eye", 0);
  println( tr.getString("Estimated Deaths (Both Sexes)") );

  for (TableRow row : cancerData.rows()) {
    int EstimatedDeaths = row.getInt("Estimated Deaths (Both Sexes)");
    //  String whatever = row.getString("Estimated Deaths (Both Sexes)");
    //   String name = row.getString("Thyroid");  

    println(row.getString(0) + " has a deathRate of " + EstimatedDeaths );
  }
}

void draw() {
  noFill();
  noStroke();
  ellipse(width/2, height/2, 200, 200);

  background(255);
  imageMode(CENTER);
  image(anatomy, width/2, height/2);
  
  
  c1.display();
  c2.display();
  //c3.display();
  //c4.display();
  //c5.display();
  //c6.display();
  //c7.display();
  //c8.display();
  //c9.display();
  //c10.display();
  //c11.display();
  //c12.display();
  //c13.display();
  //c14.display();
  //c15.display();
  //c16.display();
  //c17.display();
  //c18.display();
  //c19.display();
  //c20.display();
  //c21.display();
  //c22.display();
  //c23.display();
  //c24.display();
  //c25.display();
  //c26.display();
  //c27.display();
}

//boundary check
void mousePressed() {

  c1.hitDetect();
  c2.hitDetect();
  //c3.hitDetect();
  //c4.hitDetect();
  //c5.hitDetect();
  //c6.hitDetect();
  //c7.hitDetect();
  //c8.hitDetect();
  //c9.hitDetect();
  //c10.hitDetect();
  //c11.hitDetect();
  //c12.hitDetect();
  //c13.hitDetect();
  //c14.hitDetect();
  //c15.hitDetect();
  //c16.hitDetect();
  //c17.hitDetect();
  //c18.hitDetect();
  //c19.hitDetect();
  //c20.hitDetect();
  //c21.hitDetect();
  //c22.hitDetect();
  //c23.hitDetect();
  //c24.hitDetect();
  //c25.hitDetect();
  //c26.hitDetect();
  //c27.hitDetect();

  println(mouseX, mouseY);
}
