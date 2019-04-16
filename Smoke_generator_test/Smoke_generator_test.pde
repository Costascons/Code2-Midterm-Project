//Put generator into boundary
int numBounds = 27;

CircBound c = new CircBound(400,400,200, 80, 10);

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
  ellipse(width/2, height/2, 200,200);

  background(255);
  imageMode(CENTER);
  image(anatomy, width/2, height/2);

  
  c.display();
  
}

//boundary check
void mousePressed() {

    c.hitDetect();

}
