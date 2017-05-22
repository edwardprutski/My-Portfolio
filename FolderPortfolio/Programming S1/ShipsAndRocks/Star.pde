class Star {
  int x, y, speed, sWeight;
  boolean bigStar;
  float r;

  Star(int x, int y, int speed, int sWeight) {
    float r = random(10);
    this.x = x;
    this.y = y;
    if (r>7) {
      bigStar = true;
      strokeWeight(random(2, 5));
    } else {
      bigStar = false;
      strokeWeight(1);
    }
    this.speed = speed;
    this.sWeight = sWeight;
  }

  void display() {
    if (y>height) { // big Rock
      y=0;
      stroke(random(188,222), random(199,222),random(55));
      strokeWeight(sWeight);
      point(x, y);
    } else {
      stroke(random(188,222), random(199,222),random(55));
      strokeWeight(sWeight);
      point(x, y);
    }
  }
}