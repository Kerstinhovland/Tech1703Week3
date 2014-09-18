//Objectified cat that can move and take in arguments!

Cat myCat1;  //declare Cat object as a global
Cat myCat2;  //declare Cat object as a global

//=====================VOID SETUP START=====================
void setup() {

  background(0); 
  size(600, 600);
  frameRate(30);

  myCat1 = new Cat(0,300,2,0);        //initialize Cat object
  myCat2 = new Cat(100,330,10,150);   //initialize Cat object
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
