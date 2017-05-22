size(200,200);
background(255);
for (int i=200;i>0;i-=20) {
  stroke (0);
  fill (i);
  ellipse(width/2,height/2,i,i);
}