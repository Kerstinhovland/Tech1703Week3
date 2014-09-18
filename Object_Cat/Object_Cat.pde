//Object from Function Cat

Cat myCat;  //declare Cat object as a global

//=====================VOID SETUP START=====================
void setup() {

  background(0); 
  size(600, 600);
  frameRate(30);

  myCat = new Cat();  //initialize Cat object
}
//=====================VOID SETUP END=====================


//=====================VOID DRAW START=====================
void draw() {

  background(255);
  
  myCat.display();
  
}
//=====================VOID DRAW END=====================


//=============CAT CLASS DEFINED===============
class Cat {
  //Variables for Cat
  int x;
  int y;
  int legLength;
  int legWidth;


  Cat() {  //Constructor: Vars get Init'd

    x = height/2;
    y = width/2;
    legLength = 40;
    legWidth = 8;

  }

  void display() { //Function to draw cat
    smooth();          //smooth edges of geometry
    rectMode(CENTER);  //set rect mode
    fill(0);               //cat color
    rect(x, y, 116, 50);      //body

    ellipse(x+60, y-30, 40, 35);  //head  
    triangle(x+60-18, y-30-3, x+60-18+5, y-30-12-12, x+60-18+15, y-30-3);  //forward ear
    triangle(x+60+5, y-30-3, x+60+15, y-30-12-12, x+60+15+5, y-30-3);  //rear ear  

    rect(x-50, y+30, legWidth, legLength);  //back leg forward
    rect(x-35, y+30, legWidth, legLength);  //back leg behind

    rect(x+50, y+30, legWidth, legLength);  //front leg forward
    rect(x+35, y+30, legWidth, legLength);  //front leg behind

    rect(x-55, y-30, 5, 70);      //tail
  }  //End of Display Function
  
}  //End of Cat Class
