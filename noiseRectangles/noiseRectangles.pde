

void setup(){
  size(1024,768); //set size
  background(100);  //set background
  
  
}

void draw() {
  noiseRectangle(100,200, 200,200); // call noise rectangle function to create noisy rectangle
//  noiseRectangle(300,500, 800, 200);
//  noiseRectangle(9,10, 100, 100);
}

void noiseRectangle (int xPos, int yPos, int rectWidth, int rectHeight){
  for(int x= 0; x<rectWidth; x++){
    for(int y=0; y< rectHeight; y++){
    stroke(random(0,255));
    point(xPos+x, yPos+y); //draw a point of random color at specified point in rectangle
    
    }
  }
  
}
