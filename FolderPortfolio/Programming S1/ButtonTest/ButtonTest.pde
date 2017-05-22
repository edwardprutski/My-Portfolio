void setup(){
  size(500,500);
  background(255);
}

void draw(){
  button(10,10,100,30,"TestButton");
  button(10,90,100,30,"hello");
  button(50,50,100,30,"test");
}

void button(int x,int y,int w,int h,String bt){
  noStroke();
  fill(128);
  rect(x+3,y+3,w,h,5);
  
  //top rect
  stroke(0);
  fill(220);
  rect(x,y,w,h,5);
  
  //render text
  
  fill(0);
  text(bt,x+12,y+18);
  
}