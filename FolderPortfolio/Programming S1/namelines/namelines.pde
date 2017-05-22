int x, y;

void setup() {
  size(500,500);
  frameRate(10);
  // Set start coords
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  //drawName();
  
  println(keyCode);
  //noLoop();
}

// Algorithm for your first name
void drawName() {
  /*moveRight(5);
  moveDown(2);
  moveRight(3);
  moveLeft(3);
  moveDown(3);
  moveRight(3);
  moveLeft(3);
  moveDown(3);
  moveRight(6);
  moveUp(3);
  moveRight(3);
  moveUp(3);
  moveDown(6);
  moveLeft(3);
  moveRight(6);
  moveUp(3);
  moveDown(3);
  moveRight(3);
  moveUp(3);
  moveDown(3);
  moveRight(3);
  moveUp(3);
  moveDown(3);
  moveRight(3);
  moveUp(1);
  moveRight(3);
  moveUp(3);
  moveDown(1);
  moveLeft(3);
  moveDown(2);
  moveRight(3);
  moveDown(1);
  moveRight(3);
  moveUp(4);
  moveDown(1);
  moveRight(3);
  moveDown(1);
  moveUp(1);
  moveLeft(3);
  moveDown(3);
  moveRight(6);
  moveUp(3);
  moveRight(3);
  moveUp(3);
  moveDown(6);
  moveLeft(3);
  moveRight(3);*/
}

// Method to draw right line
void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}

//Method to draw down
void moveDown(int rep) {
    for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}

//Method to draw Left
void moveLeft(int rep){
    for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}

//Method to draw up
void moveUp(int rep) {
    for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y=y-(10*rep);
}

void keyPressed() {
  if(key == CODED) {
    println(keyCode);
    if(keyCode == RIGHT) {
      fill(0);
      stroke(4);
      moveRight(1);
      } else if (keyCode == DOWN){
        fill(0);
        stroke(4);
        moveDown(1);
      } else if (keyCode == UP){
        fill(0);
        stroke(4);
        moveUp(1);
      } else if (keyCode == LEFT){
        fill(0);
        stroke(4);
        moveLeft(1);
      }
  }
}

void mouseClicked(){
  saveFrame("Line-######.png");
  
}