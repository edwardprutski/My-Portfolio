void setup(){
  // set the size of the window
  size(200,200);
}

void draw(){
  //draw a white background
  background(255);
  //set center mode;
  ellipseMode(CENTER);
  rectMode(CENTER);
  //draw zoog's body
  stroke(0);
  fill(150);
  rect(100,100,20,100);
  //draw zoog's head
  stroke(0);
  fill(255);
  ellipse(100,70,60,60);
  //draw Zoog's eyes
  fill(0);
  ellipse(81,70,16,320);
  ellipse(119,70,16,32);
  
}