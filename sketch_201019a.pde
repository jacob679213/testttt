int cols,rows,h,w;
int scl = 20;

void setup() {
  size(600,600,P3D);
  w = 600;
  h = 600;
  cols = w / scl;
  rows = h / scl;
}

void draw() {
  //visual setup
  background(0);
  stroke(255);
  noFill();
  
  
  
  //creating the mesh that will become the terrain
  for(int y = 0; y < cols; y++){
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < rows; x++){
      vertex(x*scl, y*scl);
      vertex(x*scl, (y-1)*scl);
    }
    endShape();
  }
}
