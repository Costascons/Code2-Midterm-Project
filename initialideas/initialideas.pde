//Cancer Data Viewed in Anatomical Image

PImage anatomy;
Table cancerData;

void setup() {
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

void setup(){
  size(800,800);
anatomy = loadImage("Anatomy.png");  
  
cancerData = loadTable("Cancer Data 2019.csv", "header"); 
println(cancerData.getRowCount() + " total rows in cancerData");

//for(TableRow column : cancerData.rows()){
//int EstimatedDeaths = column.getInt("Estimated Deaths (Both Sexes)");
//}
//String Eye = row.getString("Eye");
//String name = row.getString("Thyroid");  

//println(name + " (" + Eye + ") has an ID of " + EstimatedDeaths );
  

}

void draw(){
  background(255);
  imageMode(CENTER);
 image(anatomy, width/2,height/2); 
}
