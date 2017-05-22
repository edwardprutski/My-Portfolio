void setup(){
  size(600,600);
  frameRate(01);
  
  
}
void draw(){
  background(255);
  
  rectMode(CENTER);
  
  
  strokeWeight(4);
  fill(random(255));
  ellipse(width/2,mouseY/1,random(width*0.6,width*0.95),random(width*0.6,width*.99));
  
  fill(random(255),random(255),0); 
  ellipse(width/2,height/2,random(width*0.7,width*0.95),random(width*0.88,width*.99));
  
  fill(0);
  //strokeWeight(3);
  //line(width/1.5,height/3,random(width*0.8 ,width*0.9),random(width*0.8,width*1));
  ellipse(width/2,height/1.5,random(width*0.01,width*0.2),random(width*0.01,width*.2));
  
  strokeWeight(3);
  fill(255);
  ellipse(width/1.5,height/3.5,random(width*0.01,width*0.2),random(width*0.01,width*.2));
  strokeWeight(3);
  fill(255);
  ellipse(width/2.5,height/3.5,random(width*0.01,width*0.2),random(width*0.01,width*.2));
  fill(0);
  ellipse(width/2.5,height/3.5,4,4);
  fill(0);
  ellipse(width/1.5,height/3.5,4,4);
  
  
}