
ArrayList<CircBound> circBound;
ArrayList<CircBound> circ = new ArrayList<CircBound>();
//make particle goes up

int numBounds = 27;
//0 -4000
float emitOne= 3;
//4000 - 15000
float emitTwo = 1;
//15000 - 30000
float emitThree = 0.75;
// 30000 < ...
float emitFour = 0.45;

//make green as constant
int g = color (0, 255, 0);

int boundRadius = 25;
int  particleRadius = 70;
int maxData = 51020;

//array of dat
//color = map(arrayofdata at [], 0 , maxNumber of data, 0 , 200), map..


//picked one number from the data and mapped it to red and blue value
//maybe this can be a loop?

//make arraylist

////Brain
//CircBound c1 = new CircBound(404, 159, boundRadius, particleRadius, color(map(17760, 0, maxData, 0, 255), g, map(17760, 0, maxData, 255, 0)), emitThree);
////Eye
//CircBound c2 = new CircBound(416, 196, boundRadius, particleRadius, color(map(370, 0, maxData, 0, 255), g, map(370, 0, maxData, 255, 0)), emitOne);
////Tongue
//CircBound c3 = new CircBound(409, 214, boundRadius, particleRadius, color(map(3020, 0, maxData, 0, 255), g, map(3020, 0, maxData, 255, 0)), emitOne);
////Mouth
//CircBound c4 = new CircBound(391, 222, boundRadius, particleRadius, color(map(2740, 0, maxData, 0, 255), g, map(2740, 0, maxData, 255, 0)), emitOne);
////Thyroid
//CircBound c5 = new CircBound(398, 238, boundRadius, particleRadius, color(map(2170, 0, maxData, 0, 255), g, map(2170, 0, maxData, 255, 0)), emitOne);
////Larynx
//CircBound c6 = new CircBound(408, 228, boundRadius, particleRadius, color(map(3760, 0, maxData, 0, 255), g, map(3760, 0, maxData, 255, 0)), emitOne);
////Pharynx
//CircBound c7 = new CircBound(422, 229, boundRadius, particleRadius, color(map(3450, 0, maxData, 0, 255), g, map(3450, 0, maxData, 255, 0)), emitOne);
////Breast
//CircBound c8 = new CircBound(445, 296, boundRadius, particleRadius, color(map(42260, 0, maxData, 0, 255), g, map(42260, 0, maxData, 255, 0)), emitFour);
////Lung & Bronchus
//CircBound c9 = new CircBound(365, 294, boundRadius, particleRadius, color(map(3760, 0, maxData, 0, 255), g, map(3760, 0, maxData, 255, 0)), emitOne);
////Esophagus
//CircBound c10 = new CircBound(402, 269, boundRadius, particleRadius, color(map(16080, 0, maxData, 0, 255), g, map(16080, 0, maxData, 255, 0)), emitThree);
////Liver
//CircBound c11= new CircBound(375, 348, boundRadius, particleRadius, color(map(31780, 0, maxData, 0, 255), g, map(31780, 0, maxData, 255, 0)), emitFour);
////Pancreas
//CircBound c12= new CircBound(371, 365, boundRadius, particleRadius, color(map(45750, 0, maxData, 0, 255), g, map(45750, 0, maxData, 255, 0)), emitFour);
////Stomach
//CircBound c13 = new CircBound(420, 353, boundRadius, particleRadius, color(map(11140, 0, maxData, 0, 255), g, map(11140, 0, maxData, 255, 0)), emitTwo);
////Kidney
//CircBound c14 = new CircBound(426, 374, boundRadius, particleRadius, color(map(14770, 0, 51020, 0, 255), g, map(14770, 0, 51020, 255, 0)), emitTwo);
////Ureter
//CircBound c15 = new CircBound(432, 388, boundRadius, particleRadius, color(map(980, 0, maxData, 0, 255), g, map(980, 0, maxData, 255, 0)), emitOne);
////Colon
//CircBound c16 = new CircBound(425, 419, boundRadius, particleRadius, color(map(51020, 0, maxData, 0, 255), g, map(51020, 0, maxData, 255, 0)), emitFour);
////small intestine
//CircBound c17 = new CircBound(369, 402, boundRadius, particleRadius, color(map(1590, 0, maxData, 0, 255), g, map(1590, 0, maxData, 255, 0)), emitOne);
////Gall bladder
//CircBound c18 = new CircBound(371, 419, boundRadius, particleRadius, color(map(3960, 0, maxData, 0, 255), g, map(3960, 0, maxData, 255, 0)), emitOne);
////Prostate
//CircBound c19 = new CircBound(384, 460, boundRadius, particleRadius, color(map(31620, 0, maxData, 0, 255), g, map(31620, 0, maxData, 255, 0)), emitFour);
////Urinary Bladder
//CircBound c20 = new CircBound(416, 450, boundRadius, particleRadius, color(map(17670, 0, maxData, 0, 255), g, map(17670, 0, maxData, 255, 0)), emitTwo);
////Uterine cervix
//CircBound c21 = new CircBound(410, 470, boundRadius, particleRadius, color(map(4250, 0, maxData, 0, 255), g, map(4250, 0, maxData, 255, 0)), emitTwo);
////Uterine corpus
//CircBound c22 = new CircBound(399, 457, boundRadius, particleRadius, color(map(12160, 0, maxData, 0, 255), g, map(12160, 0, maxData, 255, 0)), emitTwo);
////Bone Joints
//CircBound c23 = new CircBound(344, 262, boundRadius, particleRadius, color(map(1660, 0, maxData, 0, 255), g, map(1660, 0, maxData, 255, 0)), emitOne);
//CircBound c24 = new CircBound(466, 343, boundRadius, particleRadius, color(map(1660, 0, maxData, 0, 255), g, map(1660, 0, maxData, 255, 0)), emitOne);
//CircBound c25 = new CircBound(495, 422, boundRadius, particleRadius, color(map(1660, 0, maxData, 0, 255), g, map(1660, 0, maxData, 255, 0)), emitOne);
//CircBound c26 = new CircBound(379, 541, boundRadius, particleRadius, color(map(1660, 0, maxData, 0, 255), g, map(1660, 0, maxData, 255, 0)), emitOne);


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
    int xpos = row.getInt("XPos");
    int ypos = row.getInt("YPos");
    float Emit = row.getFloat("Emit");
    circ.add(new CircBound (xpos, ypos, boundRadius, particleRadius, color(map(EstimatedDeaths, 0, maxData, 0, 255), g, map(EstimatedDeaths, 0, maxData, 255, 0)), Emit));


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

for(CircBound c : circ) {
  c.display();
  //c2.display();
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
 }
}

//boundary check
void mousePressed() {
for(CircBound c : circ){
  c.hitDetect();
  //c2.hitDetect();
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

}
  println(mouseX, mouseY);
}
