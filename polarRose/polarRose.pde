
int theta=0; //"angle" for creating polar coordinates

void setup(){
  size(800,800); //set size
}

void draw() {
  theta+=1;
  float r=polarRose(theta, 2, 1, 85, 400);  //create a single rose
 // float t=polarRose(theta, 3 ,5 ,100, 500);
 // float f=polarRose(theta, 5 ,3 ,300, 600);
 println(r); //print the return of the polar rose function
}

//theta is the angle, n1 and n2 are the modifiers, multiplier determines the size of the rose, offset determines the location on the sketch
float polarRose(float theta, float n1, float n2, float multiplier,int offset){
  
  float r=multiplier * sin(n1/n2*theta);  // polar equation to create the rose
  float xPos = r * cos(theta)+offset; //translation of the cartesian x value of the polar
  float yPos = r * sin(theta)+offset;  //translation of the cartesian y value of the polar coordinates
  
  stroke(0); //set stroke to black
  point(xPos, yPos);  //draw point
  //fill(255,0,0);
 // ellipse(xPos, yPos,10,10);
  
  return r; //return the polar value
  
  
  
}
