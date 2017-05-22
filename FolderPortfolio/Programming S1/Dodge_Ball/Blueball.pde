PImage blueBall;
class Blueball
{
  String name;
  int x, y, w, h, lx1, ly1, lx2, ly2;
  int lWidth, lHeight;
  int speed;

  Blueball(int x, int y, int w, int h, int lWidth, int lHeight) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.lWidth = lWidth;
    this.lHeight = lHeight;
    lx1 = x;
    ly1 = y;
    lx2 = x;
    ly2 = y;
    blueBall = loadImage("ballman_blue.png");
  }
  void display() {
    imageMode(CENTER);
    image(blueBall, x, y);
  }
  boolean destroy(int bx, int by, int bw, int bh) {
    boolean destroyed = false;
    if (bx-(bw/2) >= x-(w/2) &&           // Left: 
      bx+(bw/2) <= x+(w/2) &&             // Right: 
      by-(bh/2) >= y-(h/2) &&       // Top: 
      by+(bh/2) <= y+(h/2)) {             // Bottom: 
      destroyed = true;
      speed = 0;
      x = -100;
      y = -100;
      w = 0;
      h = 0;
    }
    return destroyed;
  }
}