float x = height/2-6.5;
void setup(){
  size(100,100);
}
void draw(){
  
  
  //Body
  fill(245);
  noStroke();
  rect(35,height/2-13,35,30);
  //Cockpit
  fill(235);
  noStroke();
  rect(25,x,10,15);
  System.out.println(x);
  fill(150);
  quad(25,43.5,10,48,10,52.5,25,58.5);
  //wings
  fill(250);
  triangle(
}