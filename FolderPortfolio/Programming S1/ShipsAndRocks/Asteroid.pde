class Asteroid { //<>//
  int x, y, w, h, speed, health;
  boolean bigRock;
  boolean vis;
  float r;
  color c;

  Asteroid(int x, int y, int w, int h, int speed) {
    float r = random(10);
    this.x = x;
    this.y = y;
    if (r>7) {
      bigRock = true;
      health = 2;
      this.w = w+int(random(50, 100));
      this.h = h+int(random(50, 100));
      c = color(random(188), random(100), random(20));
    } else {
      bigRock = false;
      health = 1;
      this.w = w;
      this.h = h;
      c = color(random(88, 200));
    }

    this.speed = speed;

    vis = true;
  }

  void display() {
    if (vis) {
      if (bigRock) { // big Rock
        stroke(0);
        fill(c);
        //rectMode(CENTER);
        //rect(x, y, w, h);
        ellipseMode(CENTER);
        ellipse(x, y, w, h);
      } else {
        stroke(0);
        fill(c);
        //rectMode(CENTER);
        //rect(x, y, w, h);
        ellipseMode(CENTER);
        ellipse(x, y, w, h);
      }
    } else {
      x = -100;
      y = -100;
      w = 0;
      h = 0;
      speed = 0;
    }
  }

  boolean destroy(int ax, int ay, int aw, int ah, int laser) {
    boolean destroyed = false;
    if (ax-(aw/2) >= x-(w/2) && 
      ax+(aw/2) <= x+(w/2) && 
      ay-(ah/2) >= y-(h/2)-laser && 
      ay+(ah/2) <= y+(h/2)) {
      vis = false;
      destroyed = true;
      speed = 0;
      x = -100;
      y = -100;
      w = 0;
      h = 0;
    }
    return destroyed;
  }
  
  boolean destroyShip(int ax, int ay, int aw, int ah) {
    boolean destroyed = false;
    if (ax-(aw/2) >= x-(w/2) && 
      ax+(aw/2) <= x+(w/2) && 
      ay-(ah/2) >= y-(h/2) && 
      ay+(ah/2) <= y+(h/2)) {
      vis = false;
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