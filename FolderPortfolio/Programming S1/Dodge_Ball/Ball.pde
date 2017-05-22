/*class Ball 
 {
 int x, y, w, h, speed;
 boolean vis;
 
 
 Ball(int x, int y, int w, int h, int speed) 
 {
 //float r = random(10);
 this.x = x;
 this.y = y;
 this.w = 2;
 this.h = 2;
 this.speed = speed;
 vis = true;
 }
 void display() 
 {
 if (vis) 
 {
 stroke(0);
 fill(0);
 ellipseMode(CENTER);
 ellipse(x, y, w, h);
 }
 } else
 {
 x = 0;
 y = 0;
 w = 0;
 h = 0;
 speed = 0;
 }
 }
 }*/





class Ball {
  int x, y, w, h, speed;
  boolean bigRock;
  boolean vis;
  float r;

  Ball(int x, int y, int w, int h, int speed) {

    this.x = x;
    this.y = y;
    bigRock = true;
    this.w = w+int(10);
    this.h = h+int(10);


    this.speed = speed;
    vis = true;
  }

  /* void display() {
   if (vis) {
   } else {
   x = 0;
   y = 0;
   w = 0;
   h = 0;
   speed = 0;
   }
   }
   }*/
  void display() {
    if (vis) {
      noStroke();
      fill(255, 0, 0);
      ellipseMode(CENTER);
      ellipse(x, y, w, h);
    } else {
      x = 0;
      y = 0;
      w = 0;
      h = 0;
      speed = 0;
    }
  }
  boolean destroyBall(int bx, int by, int bw, int bh) {
    boolean destroyed = false;
    if (bx-(bw/2) >= x-(w/2) && 
      bx+(bw/2) <= x+(w/2) && 
      by-(bh/2) >= y-(h/2) && 
      by+(bh/2) <= y+(h/2)) {
      destroyed = true;
    }
    return destroyed;
  }
}