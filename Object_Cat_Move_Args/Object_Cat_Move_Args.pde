//Objectified cat that can move and take in arguments!

Cat myCat1;  //declare Cat object as a global
Cat myCat2;

//=====================VOID SETUP START=====================
void setup() {

  background(0); 
  size(600, 600);
  frameRate(30);

  myCat1 = new Cat(0,300,2,0);        //initialize Cat object
  myCat2 = new Cat(100,400,10,150);   //initialize Cat object
}
//=====================VOID SETUP END=====================


//=====================VOID DRAW START=====================
void draw() {

  background(255);
  
  myCat1.move();            //move x position of cat
  myCat1.boundsCheckX();    //check to see if x position has gone off screen horiz
  myCat1.display();         //draw cat
  
  myCat2.move();            //move x position of cat
  myCat2.boundsCheckX();    //check to see if x position has gone off screen horiz
  myCat2.display();         //draw cat
  
}
//=====================VOID DRAW END=====================


//=============CAT CLASS DEFINED===============
class Cat {
  //Variables for Cat
  int x;
  int y;
  int legLength;
  int legWidth;
  int xSpeed;
  color fillColor;

  Cat(int tempX, int tempY, int tempSpeedX, color tempColor) {  //Constructor
  
  //Vars get Init'd
    x = tempX;               //x assigned value of tempX which is incoming arg
    y = tempY;               //y assigned value of tempY which is incoming arg
    xSpeed = tempSpeedX;     //xSpeed assigned value of tempSpeedX which is incoming arg
    fillColor = tempColor;    //fillColor assigned value of tempColor which is incoming
    
    legLength = 40;
    legWidth = 8;
  }

  void display() { //Function to draw cat
    smooth();          //smooth edges of geometry
    noStroke();
    rectMode(CENTER);  //set rect mode
    fill(fillColor);               //cat color
    rect(x, y, 116, 50);      //body

    ellipse(x+60, y-30, 40, 35);  //head  
    triangle(x+60-18, y-30-3, x+60-18+5, y-30-12-12, x+60-18+15, y-30-3);  //forward ear
    triangle(x+60+5, y-30-3, x+60+15, y-30-12-12, x+60+15+5, y-30-3);  //rear ear  

    rect(x-50, y+30, legWidth, legLength);  //back leg forward
    rect(x-35, y+30, legWidth, legLength);  //back leg behind

    rect(x+50, y+30, legWidth, legLength);  //front leg forward
    rect(x+35, y+30, legWidth, legLength);  //front leg behind

    rect(x-55, y-30, 5, 70);      //tail
  }
  //End of Display Function

  void move() {  //Function to move cat
    x = x+xSpeed;
  }
  //End of Move Function

  void boundsCheckX() {    //Function to check the x position of cat on screen
    if (x > width || x < 0) { 
      xSpeed = xSpeed * -1;
    }
  }
  //End of boundsCheckX Function
  
}  //End of Cat Class

