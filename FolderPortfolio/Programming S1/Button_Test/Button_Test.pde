Button b1;

void setup(){
  background(255);
  size(500,500);
  b1 = new Button(255,width/2,height/2,50,50,"test");
}

void draw(){
  b1.display();
  b1.hover(mouseX,mouseY);
}