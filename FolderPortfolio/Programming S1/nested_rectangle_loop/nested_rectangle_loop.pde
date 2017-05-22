void setup(){
  size(200,200);
}

void draw(){
for (int x = 0;x<width;x+=10){
  for (int y=0;y<height;y+=10){
    fill(random(255));
    noStroke();
    rect(x,y,10,10); //<>//
  }
  }
  
  
}