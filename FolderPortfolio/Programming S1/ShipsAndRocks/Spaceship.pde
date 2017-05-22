PImage ship;
class Spaceship {
  int pu; // used for powerups
  String name;
  int x, y, w, h, lx1, ly1, lx2, ly2;
  int laser, lWidth, lHeight;
  int speed;

  Spaceship(int x, int y, int w, int h, int laser, int lWidth, int lHeight) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.laser = laser;
    this.lWidth = lWidth;
    this.lHeight = lHeight;
    lx1 = x;
    ly1 = y;
    lx2 = x;
    ly2 = y;
    ship = loadImage("ship01.png");
    pu = 0;
  }

  void display() {
    imageMode(CENTER);
    image(ship, x, y);
  }
  boolean destroy(int ax, int ay, int aw, int ah, int laser) {
    boolean destroyed = false;
    if (ax-(aw/2) >= x-(w/2) &&           // Left: 
      ax+(aw/2) <= x+(w/2) &&             // Right: 
      ay-(ah/2) >= y-(h/2)-laser &&       // Top: 
      ay+(ah/2) <= y+(h/2)) {             // Bottom: 
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