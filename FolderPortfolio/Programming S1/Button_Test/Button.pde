class Button {
  // member variables
  color b1;
  float x;
  float y;
  float w;
  float h;
  String val;
  boolean over;
  //constructor
  /*Button(float tempX, float tempY, float tempW, float tempH) {
   x = tempX;
   y = tempY;
   w = tempW;
   h = tempH;
   }*/

  Button(color b1, int x, int y, int w, int h, String val) {
    this.b1 = b1;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    over = false;
  }

  //display method
  /*void display() {
   background(255);
   stroke(0);
   if (mouseX>=x && mouseX<w+x && mouseY>y && mouseY<=y+h) {
   fill(random(255),random(255),random(255));
   } else {
   fill(0);
   }
   rect(x,y,w,h);
   }*/
  void display() {
    if (over) {
      fill(128);
      rect(x, y, w, h);
      fill(random(255),random(255),random(255));
      rect(x-4, y+4, w, h);
      fill(0);
      text(val, x+5, y+15);
    } else {
      fill(128);
      rect(x, y, w, h);
      fill(200);
      rect(x-4, y+4, w, h);
      fill(0);
      text(val, x+5, y+15);
    }
  }
  void hover(int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}