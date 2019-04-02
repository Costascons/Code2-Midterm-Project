//Cancer Data Viewed in Anatomical Image

Table cancerData;

void setup(){
cancerData = loadTable("Cancer Data 2019.csv", "header"); 
println(cancerData.getRowCount() + " total rows in cancerData");

for(TableRow row : cancerData.rows()){
int EstimatedDeaths = row.getInt("Estimated Deaths (Both Sexes)");
String Eye = row.getString("Eye");
String name = row.getString("Thyroid");  

println(name + " (" + Eye + ") has an ID of " + EstimatedDeaths );
  
}
  
}
