Blueball b1;
Ball[] b = new Ball[500];


int dodged = 0;
int level = 0;
//int bW, bH;
boolean touched = false;

void setup()
{
  size(500, 700);


  b1 = new Blueball(width/2, height/2, 100, 100, 2, 2);
  // render
  for (int i =0; i<b.length; i++)
  {
    b[i] = new Ball(int(random(width)), int(random(-100000, -100)), 2, 2, int(4));
  }
}

void draw()
{

  if (frameCount == 700)
  {
    frameCount = 0;
    level++;
  }

  noCursor();
  b1.x = mouseX;
  b1.y = mouseY;
  /*pushMatrix();
   translate(3, -30);
   b1.x = mouseX+3; 
   b1.y = mouseY-30;
   popMatrix();*/
  if (touched == false)
  {
    background(255);
    display();

    for (int i=0; i<b.length; i++)
    {
      b[i].display();
      b[i].y += b[i].speed;
      if (b[i].y > 650)
      {
        dodged++;
      } else if (b[i].destroyBall(b1.x, b1.y, b1.w, b1.h)) { 
        gameOver();
      }
    }
    b1.display();
    display();
  }/* else 
   {
   gameOver();
   }*/
}

void display() 
{
  fill(185);
  noStroke();
  strokeWeight(3);
  rect(0, 650, 500, 50);
  fill(0);
  textSize(20);
  text("Level: "+level, 10, 680);
  text("Dodged: " +dodged, 120, 680);
}

void gameOver() 
{
  background(255, 0, 0);
  rect(0, 0, width, height);
  fill(0);
  textSize(100);
  text("Game Over", 50, 300);
  noLoop();
}