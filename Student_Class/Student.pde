class Student {  //Create a class of type student to hold student data
  int idNumber; //member variables to hold values for student
  int age;
  String name;
  String eyeColor;
  Backpack studentPack;
  
  Student(){  //Constructor for creating a student with default data
   idNumber =0;
   age = 18;
   name = "J Doe";
   eyeColor="";
   studentPack = new Backpack();  //initialize memory for an object of type Backpack 
  }
  
  Student(int id, int studentAge, String studentName, String eye, Backpack pack) { //Constructor to create a student with varibles assigned
   idNumber = id;
   age=studentAge;
   name=studentName;
   eyeColor=eye;
   studentPack= pack; 
  }
  
  void printStudent(){  //Function to print out student's data
    println("Student Name = " + name); //Print name
   println("Student ID = " + idNumber); //print Id number
   println("Student Age = " + age); //print age
   println("Eye Color = " + eyeColor); //Print eye Color
   println(name+ " carries a backpack that has these properties: " + studentPack.formatPack()); //use the backpack class' embedded string formatter to print the backpack info
     println(); // Print an extra line to seperate students
  }
  
}
