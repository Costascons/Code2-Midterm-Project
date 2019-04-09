//Cancer Data Viewed in Anatomical Image

PImage anatomy;
Table cancerData;

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
