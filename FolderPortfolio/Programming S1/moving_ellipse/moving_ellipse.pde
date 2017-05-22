int a = 500;
int b = 500;

void setup() {
  size(1000,1000);
  background(200);
  frameRate(144); 
}

void draw() {
  background(200);
  ellipse(a--,b--,50,50);
  
}