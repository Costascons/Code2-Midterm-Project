//Put generator into boundary
int numBounds = 27;
ArrayList<Generator> generators;

PImage anatomy;
Table cancerData;

void setup() {
  size(800, 800);
  generators = new ArrayList<Generator>();
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


  for (int i = 0; i < generators.size(); i++) {
    Generator g = generators.get(i);
    g.addParticles();
    g.drawParticles();
  }
}

//boundary check
void mousePressed() {
  //  if (mouseX < width/2 + 200/2 && mouseX > width/2 - 200/2 && mouseY < height/2 + 200/2 && mouseY > height/2 - 200/2) {
    
    if(dist(width/2,height/2, mouseX, mouseY)< 200){
  generators.add(new Generator(mouseX, mouseY, 80, color(255, 20, 60)));
    }

  //  }
}
