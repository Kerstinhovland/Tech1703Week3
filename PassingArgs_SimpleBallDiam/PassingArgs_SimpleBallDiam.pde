int x;

//=====================VOID SETUP START=====================
void setup() {

  background(0); 
  size(600, 600);
  frameRate(30);

  x = 0;
}
//=====================VOID SETUP END=====================


//=====================VOID DRAW START=====================
void draw() {

  background(0);

  x = mouseX;

  drawBall(x);
  
  //drawBallSpecial(x, color(0,255,0,constrain(x,0,255)));
}

void drawBall(int diam) {

  fill(255, 0, 0);
  ellipse(width/2, height/2, diam, diam);
}

void drawBallSpecial(int diam, color c) {

  fill(c);
  ellipse(width/2, height/2, diam, diam);
  
}

