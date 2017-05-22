

class Car {
  // member variables
  color c;
  float xpos, ypos, xspeed;

  //constructor
  Car(/*color cTemp*/) {
    c = color(255);
    xpos = width/2;
    ypos = random(height);
    xspeed = random(5,20);
  }

  // member methods
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    rect(xpos-5, ypos-6, 5, 3);
    rect(xpos+5, ypos-6, 5, 3);
    rect(xpos+5, ypos+7, 5, 3);
    rect(xpos-5, ypos+7, 5, 3);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}