int x;

//=====================VOID SETUP START=====================
void setup() {

  background(0); 
  size(600, 600);
  frameRate(30);
  smooth();

  x = 0;
}
//=====================VOID SETUP END=====================


//=====================VOID DRAW START=====================
void draw() {

  x = randGen();
  
  drawBallSpecial(mouseX,color (x));
}


int randGen(){
 
  int r;  //local var to hold random number eventually
  
  r = int(random(0,255));  //assign r a random value betwen 0-255 casted as an int
  
  return r;  //returning value of int r
}


void drawBallSpecial(int diam, color c) {

  noStroke();
  fill(c);
  ellipse(width/2, height/2, diam, diam);
  
}

