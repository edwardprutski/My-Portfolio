class Lines {
  //Member Vari
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
  }

  //display method
  void display() {
    //strokeW = .4;
    //pointCount = random(1, 20);
    //stroke(0);
    //strokeWeight(strokeW);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>75) {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, pointCount*random(1,5));
      } else if (random(100)>70) {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount*random(1,5));
      } else if (random(100)>45) {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveRight(xpos, ypos, pointCount*random(1,5));
      } else {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount*random(1,5));
      }
    }
  }
  // move right
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }
  // move left
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
    }
  }
  // move Down
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY + i;
    }
  }
  // move Up
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY - i;
    }
  }
}