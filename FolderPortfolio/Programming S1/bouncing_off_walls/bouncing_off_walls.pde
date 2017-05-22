int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup(){
  size(displayWidth,displayHeight);
  background(0);
  xspeed = 3;
  yspeed = 10;
  wdth = 20;
  ht = 20;
  noStroke();
  xpos = width/2;
  ypos = width/2;
  frameRate(120);
  
  
}
void draw(){
  //background(255);
  fill(255);
  ellipse(xpos,ypos,wdth,ht);
  ellipse(xpos+100,ypos-100,wdth,ht);
  xpos += xspeed/2;
  ypos += yspeed/2;
  if (xpos >= width-wdth/2 || xpos <= wdth/2){
    xspeed *= -1;
  }
  if (ypos >= height-ht/2 || ypos <= ht/2){
    yspeed = yspeed * -1;
  }
}