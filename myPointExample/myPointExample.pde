Point myPoint; // declare variable of type point


void setup(){
  background(0); 
  size(600, 600);
  myPoint = new Point(); //initialize point new tells the compiler to allocate memory for class point
}

void draw() {

  background(255);
  myPoint.x=mouseX;
  myPoint.y=mouseY;
  myPoint.printPoint();
  
}

//create the class
class Point { //create a class of type point to hold an x and y value
  int x; //member variable to store x position
  int y;  //member variable to store y position
  
  Point() {   //Constructor - this tells Processing how to initialize variables when it creates the object
     x=0;    //default behavior sets x to 0 and y to 0.
     y=0; 
  }
  
  Point(int xIn){   //Constructor with one variable - set X and initialize y to 0
    x=xIn; //set member variable x equal to a pssed variable of xIn
    y=0; //set member variable y =0
  }
  
  Point(int inX, int inY){  // Constructor with 2 variables - initialize x and y to those variables at creation
     x=inX; 
     y=inY; 
  }
  
  void printPoint(){  //Prints the point in a graceful way to the console
    println("x=" + x +"  y="+y);
  }
}
