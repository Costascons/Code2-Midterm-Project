//Put generator into boundary
int numBounds = 27;
int emitOne= 3;
//make green as constant
int g = color (0, 255, 0);


//array of dat
//color = map(arrayofdata at [], 0 , maxNumber of data, 0 , 200), map..

//CircBound[] yay = new CircBound[27];

//CircBound c = new CircBound(400,153,200, 80, color(120,120,41), emitOne);
//picked one number from the data and mapped it to red and blue value
//maybe this can be a loop?
CircBound c = new CircBound(400, 153, 200, 80, color(map(16080, 0, 51020, 0, 255), g, map(16080, 0, 51020, 255, 0)), emitOne);

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
  
  
  c.display();
}

//boundary check
void mousePressed() {

  c.hitDetect();

  println(mouseX, mouseY);
}
