//Function Example Drawing a Cat

int x;
int speed;

//=====================VOID SETUP START=====================
void setup(){
 
 background(0); 
 size(600,600);
 frameRate(30);
 
 x = 0;
 speed = 3;
}
//=====================VOID SETUP END=====================


//=====================VOID DRAW START=====================
void draw(){
  
 background(0,0,100);
 ground();
 moon();
 move();
 bounce();
 cat();
 
 
}
//=====================VOID DRAW END=====================

//=========SHIFF CODE

void move() { 
  // Change the x location by speed
  x = x + speed;
}

// A function to bounce the ball
void bounce() {
  // If weâ€™ve reached an edge, reverse speed
  if ((x > width) || (x < 0)) {
    speed = speed * - 1;
  }
}


//=====================VOID CAT START=====================
//This function draws a black cat

void cat(){
  
  //int x, y, legLength, legWidth;    //declare local integer variables for cat
  int y, legLength, legWidth;
  
  rectMode(CENTER);  //set rect mode
  stroke(1);
  
  /*
  x = mouseX;    //assign current mouse xposition to x
  y = mouseY;    //assign current mouse yposition to y
  println("Current X Pos = "+x);
  println("Current Y Post = "+y);
  */
  y = 400;
  legWidth = 8;          //assign width of leg
  legLength = 40;        //assign length of leg
  
  fill(0);               //cat color
  rect(x,y,116,50);      //body
  
  ellipse(x+60,y-30,40,35);  //head  
  triangle(x+60-18,y-30-3, x+60-18+5, y-30-12-12, x+60-18+15, y-30-3);  //forward ear
  triangle(x+60+5,y-30-3, x+60+15, y-30-12-12, x+60+15+5, y-30-3);  //rear ear  
  
  rect(x-50,y+30,legWidth,legLength);  //back leg forward
  rect(x-35,y+30,legWidth,legLength);  //back leg behind
  
  rect(x+50,y+30,legWidth,legLength);  //front leg forward
  rect(x+35,y+30,legWidth,legLength);  //front leg behind
  
  rect(x-55,y-30, 5, 70);      //tail

}
//=====================VOID CAT END=====================

//=====================VOID GROUND START=====================
void ground(){
  fill(100,92,92);
  rectMode(CORNER);
  noStroke();
  rect(0,400,width, height/3);
}
//=====================VOID GROUND END=====================


//=====================VOID MOON START=====================
void moon(){
  fill(200,200,0);
  ellipse(70,70, 70,70);
}
//=====================VOID MOON END=====================
