// Draw horizontal lines
for (int i=0; i<height; i+=10) {
  line(0,i,width,i);
}

// Draw vertical lines
int i = 0;
while (i<width) {
  line(i,0,i,height);
  i+=10;
}