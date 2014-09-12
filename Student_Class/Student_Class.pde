Student Mary;  //Declare Student Mary
Student Joey;  //Declare Student Joey
Backpack MarysPack;  //Declare Mary's Backpack
Backpack JoeysPack;  //Declare Joey's Backpack

void setup(){
  size(100,100);
  noLoop();
  //**************************************//
  //The problem we had in class was that backpacks needed to be initialized before students.  We will go over the reason for this in the next class//
  //**************************************//
  JoeysPack = new Backpack(5, "Light Brown", "Medium");  //Initialize Joey's Backpack with set values
  MarysPack= new Backpack();   // Initialize Mary's Backpack with default values
  Mary = new Student();  //Initialize Student Mary with default values
  Joey = new Student(12346, 18, "Joey Arcaro III", "Brown",  JoeysPack); //initialize 
  
 
  MarysPack.numPockets=5;
  MarysPack.packColor = "Green"; 
}

void draw() {
  
  //Set Mary's information directly via dot sytax
 Mary.idNumber= 12345;
 Mary.age = 19;
 Mary.eyeColor = "Grey";
 Mary.name = "Mary Tudor";
 Mary.studentPack = MarysPack;
 MarysPack.packColor = "Green";
 MarysPack.numPockets = 2;
 MarysPack.size = "Large";
 

  Mary.printStudent(); //Call the embedded print function to print Mary's Data

  Joey.printStudent(); //Call the embedded print funciton to print Joey's Data
}





