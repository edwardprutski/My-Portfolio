import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class randomlines extends PApplet {

Lines[] myLines = new Lines[50];

public void setup() {
  
  background(0);
  for (int i = 0; i<myLines.length; i++) {

    myLines[i] = new Lines(random(width), random(height), random(1), random(1, 7));
  }
}

public void draw() {
  if (frameCount>1000) {
    frameCount=0;
    background(0);
  } else for (int i=0; i<myLines.length; i++) {
    myLines[i].display();
  }
}
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
  public void display() {
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
  public void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }
  // move left
  public void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
    }
  }
  // move Down
  public void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY + i;
    }
  }
  // move Up
  public void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY - i;
    }
  }
}
  public void settings() {  size(displayWidth, displayHeight); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "randomlines" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
