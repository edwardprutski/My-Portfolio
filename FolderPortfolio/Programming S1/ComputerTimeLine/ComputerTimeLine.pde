color rgb1 = #3E7F58;
color rgb2 = #75FF97;
color rgb3 = #76E880;
color rgb4 = #81FF75;
color rgb5 = #95F570;

void setup(){
  size(900,400);
  background(rgb4);
}

void draw(){
  background(rgb4);
  drawRef(50,300,850,300);
  histEvent(50,250,80,30,"xd","history",true);
  println("x: "+mouseX+" y: " + mouseY);

}

void histEvent(int x, int y, int w, int h, String tText, String dText, boolean top){
  strokeWeight(.5);
  if(top){
    line(x+20,y+h,x+40,y+h+20);
  } else {
    line(x+20,y,x+40,y-20);
  }
  fill(rgb3);
  noStroke();
  rect(x+5,y+5,w,h,5); //shadow
  fill(rgb5);
  stroke(100);
  rect(x,y,w,h,5); //button
  fill(rgb1);
  text(tText,x+5,y+20);
  if(mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h){
    if(top){
      text(dText,x,y-30);
    } else {
      text(dText,x,y+60);
    }
  }
}

void drawRef(int x, int y, int w, int h){
  strokeWeight(4);
  line(x,y,w,h);
}