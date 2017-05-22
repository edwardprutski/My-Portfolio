class CalcButton {
  // class variables
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int buttonW;
  int buttonH;
  boolean overBox = false;

  // constructor
  CalcButton(float tempXpos, float tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
    //buttonW = tempButtonW;
    //buttonH = tempButtonH;
  }

  CalcButton asNumber(float tempNumButtonValue, int tempW, int tempH) {
    isNumber = true;
    numButtonValue = tempNumButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  CalcButton asOperator(String tempOpButtonValue, int tempW, int tempH) {
    opButtonValue = tempOpButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }
  CalcButton asSpecial(String tempSpButtonValue, int tempW, int tempH) {
    isSpecial = true;
    spButtonValue = tempSpButtonValue;
    buttonW = tempW;
    buttonH = tempH;
    return this;
  }

  // draw the button on the canvas
  void display() {
    //draw button
    if (isNumber) 
    {
      fill(130,255,193);
      stroke(0);
      strokeWeight(.5);
      rect(xpos, ypos, buttonW, buttonH);
      fill(0);
      textSize(24);
      text(int(numButtonValue), xpos+15, ypos+30);
    } else if (opButtonValue == "C") 
    {
      fill(130,255,193);
      stroke(0);
      strokeWeight(.5);
      rect(xpos, ypos, buttonW, buttonH);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+11, ypos+30);
    } else if (spButtonValue == ".")
    {
      fill(130,255,193);
      stroke(0);
      strokeWeight(.5);
      rect(xpos, ypos, buttonW, buttonH);
      fill(0);
      textSize(24);
      text(spButtonValue, xpos+11, ypos+30);
    }else if (opButtonValue == "±")
    {
      fill(130,255,193);
      stroke(0);
      strokeWeight(.5);
      rect(xpos, ypos, buttonW, buttonH);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+11, ypos+30);
    } else 
    
    {
      fill(130,255,193);
      stroke(0);
      strokeWeight(.5);
      rect(xpos, ypos, buttonW, buttonH);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+15, ypos+30);
    }
  }

  //handl mouse actions
  void click() 
  {
    overBox = mouseX > xpos && mouseX < xpos+buttonW && mouseY > ypos && mouseY < ypos+buttonH;
  }
}