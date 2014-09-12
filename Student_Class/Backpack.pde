//Create a class to define properties of a student's backpack. 
class Backpack {
 int numPockets; //number of pockets
 String packColor; //color of pack
 String size;  //size of pack
 
 Backpack() { //Default constructor
   numPockets = 1; 
   packColor="Not Defined";
   size="Not Defined"; 
 }
 
 Backpack(int pockets, String col, String packSize) {  //constructor with vars initialized
   numPockets = pockets;
   packColor=col;
   size= packSize;
 } 
 
 String formatPack(){ // Function to facilitate printing Pack properties cleanly
  String formattedString = "Number of Pockets: " + numPockets + ", Color: " +packColor +", Size: " + size; //Create a string that prints the information
  return formattedString; //Return the string
 }
 
}
