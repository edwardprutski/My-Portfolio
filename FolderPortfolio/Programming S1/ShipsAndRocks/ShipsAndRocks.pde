Spaceship s1; //<>//
Star[] s = new Star[75];
Asteroid[] a = new Asteroid[500];
Laser l1;
Laser l2;
Laser l3;

color bg;
int score, missed, lW, lH; 
float hit, fired;

void setup() {
  size(1000, 700);
  //size(displayWidth,displayHeight);
  //frameRate(100);
  fired = 0;
  hit = 0;
  s1 = new Spaceship(width/2, height/2, 100, 100, 300, 2, 2);

  l1 = new Laser(width/2, height/2, 4, 4, 200);
  l2 = new Laser(width/2, height/2, 4, 4, 200);
  l3 = new Laser(width/2, height/2, 4, 4, 200);

  // Populate Starfield 
  for (int i = 0; i<s.length; i++) {
    s[i] = new Star(int(random(width)), int(random(height)), int(random(1, 10)), int(random(1, 3)));
  }

  // Populate Asteroids
  for (int i = 0; i<a.length; i++) {
    a[i] = new Asteroid(int(random(width)), int(random(-100000, 100)), 20, 20, int(random(1, 4)));
  }
}

void draw() {
  noCursor();
  s1.x = mouseX; 
  s1.y = mouseY;
  pushMatrix();
  translate(3,-30);
  l1.x = mouseX+3; 
  l1.y = mouseY-30;
  popMatrix();
  if (s1.pu > 1) {
    pushMatrix();
    translate(50, 0);
    l2.x = mouseX + 55;
    l2.y = mouseY;
    popMatrix();
    
    if (s1.pu > 2) {
      pushMatrix();
      translate(50, 0);
      l3.x = mouseX -55;
      l3.y = mouseY;
      popMatrix();
      noCursor();
    }
  }
  
  

  if (missed<10) {
    background(55);
    // Render Stars
    for (int i=0; i<s.length; i++) {
      s[i].display();
      s[i].y += s[i].speed;
    }

    // Render Asteroids
    for (int i=0; i<a.length; i++) {
      a[i].display();
      a[i].y += a[i].speed;
      if (a[i].y > height) {
        a[i].vis = false;
        missed++;
      }
      // Detect ship collision
      if (a[i].destroyShip(s1.x, s1.y, s1.w, s1.h)) { 
        gameOver();
      }
    }
    s1.display();
    display();
  } else {
    gameOver();
  }
}

void mousePressed() {
  fired++;
  l1.shoot();
  for (int i=0; i<a.length; i++) {
    if (a[i].destroy(l1.lx1, l1.ly1, l1.w, l1.h, l1.laser)) { 
      if (a[i].bigRock) {
        updateScores(true);
      } else {
        updateScores(false);
      }
    }
  }
  if (s1.pu > 1) {
    l2.shoot();
    for (int i=0; i<a.length; i++) {
      if (a[i].destroy(l2.lx1, l2.ly1, l2.w, l2.h, l2.laser)) { 
        if (a[i].bigRock) {
          updateScores(true);
        } else {
          updateScores(false);
        }
      }
    }
  }
  if (s1.pu > 2) {
    l3.shoot();
    for (int i=0; i<a.length; i++) {
      if (a[i].destroy(l3.lx1, l3.ly1, l3.w, l3.h, l3.laser)) { 
        if (a[i].bigRock) {
          updateScores(true);
        } else {
          updateScores(false);
        }
      }
    }
  }
}

void updateScores(boolean bigAsteroid) {
  if (bigAsteroid) {
    hit++;
    score+=100;
  } else {
    hit++;
    score+=10;
  }
  // Increment levels
  if (score <= 199) {
    s1.pu = 1;
  } else if (score > 200 && score <= 499) {
    s1.pu = 2;
  } else if (score > 500 && score < 999) {
    s1.pu = 3;
  }
}

void display() {
  fill(185);
  stroke(0);
  strokeWeight(3);
  rectMode(CORNER);
  rect(0, height-50, width, height);
  fill(0);
  textSize(20);
  text("Points: " + score, 10, height-30);
  text("Missed: " + missed, 10, height-10);
  text("Shots Fired: " + int(fired), width/5, height-30);
  text("Targets Hit: " + int(hit), width/2, height-30);
  text("Efficiency: " + ((hit)/(fired))*100 + "%", width/5, height-10);
  text("Level: " + s1.pu, width/2, height-10);
}

void gameOver() {
  background(122);
  fill(66);
  rect(5, 5, width-10, height-10);
  textSize(100);
  fill(222, 23, 22);
  text("Game Over!", 40, 320);
  textSize(40);
  fill(222);
  text("Final Score: " + score, 70, 390);
  text("Points: " + score, 70, 430);
  text("Missed: " + missed, 70, 470);
  text("Shots Fired: " + int(fired), 70, 510);
  text("Objects Hit: " + int(hit), 70, 550);
  text("Efficiency: " + ((hit)/(fired))*100 + "%", 70, 590);
  noLoop();
}