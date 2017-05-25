
# |Programming 1 Portfolio| 

### By Edward Prutski
---

My school email: edwaprut9525@granitesd.org

###Group Project

For one of my projects I had worked on a game called "Purple Man Fights Back"

![StartScreen](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/startgame.png)

This Game is a side-scrolling platformer. Your goal is to go through multiple sections of platforming to get to the final evil robot boss.

![Game](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/game1.png)

![Boss](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/boss.png)

This game features:
- Double Jumping
- Health System and Health pots
- Custom Gravity engine
- Checkpoint system
- Dash Mechanic
- 4 different unique mobs with their own unique simple Ai mechanics
- Environmental Hazards

You can get the game from one of the appropriate links
- [Windowsx64](https://drive.google.com/open?id=0B6569lscHHIcZTItUF90RFEwWFE)
- [Windowsx32](https://drive.google.com/open?id=0B6569lscHHIcMVRGdmZJbEdDM3M)
- [MacOSX](https://drive.google.com/open?id=0B6569lscHHIcTkh6T1JQSFJwcjQ)

# Other Projects

### Bouncing Balls Simulation

![Simulation](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/Bouncing.png)

This program simulates basic action reaction forces. When the ball hits the edge of the screen it bounces the oppisite direction and after a while makes cool looking patterns

Code

```
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
```
---
### Random Score Generator

![Console](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/console.png)

In this console based application I made it so after starting the program it would create a random float number variable then pass that number through a grading score system that would check if its greater than or less than the number specified and determine the grade from there.

Code

```
float grade = random(0, 100);

if (grade>=94) {
  println("Your Grade is an A "+grade+"%");
} else if (grade<94 && grade>=89) {
  println("Your Grade is an A- "+grade+"%");
} else if (grade<89 && grade>=87) {
  println("Your Grade is a B+ "+grade+"%");
} else if (grade<87 && grade>=83) {
  println("Your Grade is a B "+grade+"%");
} else if (grade<83 && grade>=80) {
  println("Your Grade is a B- "+grade+"%");
} else if (grade<80 && grade>=77) {
  println("Your Grade is a C+ "+grade+"%");
} else if (grade<77 && grade>=73) {
  println("Your Grade is a C "+grade+"%");
} else if (grade<73 && grade>=70) {
  println("Your Grade is a C- "+grade+"%");
} else if (grade<70 && grade>=67) {
  println("Your Grade is a D+ "+grade+"%");
} else if (grade<67 && grade>=63) {
  println("Your Grade is a D "+grade+"%");
} else if (grade<63 && grade>=60) {
  println("Your Grade is a D- "+grade+"%");
} else if (grade<60) {
  println("You have failed "+grade+"%");
}
```
---
### Calculator

![Calc](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/calc.png)

In this Graphics Program I had made a simple calculator. It is able to add, subtract, times, divide, clear, square, + or - , and also create decimals.

Code

main calculatorFinal
```
// Instantiate each of hte classification of buttons
CalcButton[] numButtons = new CalcButton[10];
CalcButton[] opButtons = new CalcButton[8];
CalcButton[] spButtons = new CalcButton[1];
String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0; 
char opValue;
boolean firstNum;

void setup() {
  size(300, 380);
  background(50, 55, 55);
  frameRate(18);
  noFill();
  strokeWeight(.5);
  stroke(200);
  rect(1, 1, 327, 327);

  // populate number buttons
  numButtons[0] = new CalcButton(0, 320).asNumber(0, 120, 60);
  numButtons[1] = new CalcButton(0, 260).asNumber(1, 60, 60);
  numButtons[2] = new CalcButton(0, 200).asNumber(4, 60, 60);
  numButtons[3] = new CalcButton(0, 140).asNumber(7, 60, 60);
  numButtons[4] = new CalcButton(60, 260).asNumber(2, 60, 60);
  numButtons[5] = new CalcButton(60, 200).asNumber(5, 60, 60);
  numButtons[6] = new CalcButton(60, 140).asNumber(8, 60, 60);
  numButtons[7] = new CalcButton(120, 260).asNumber(3, 60, 60);
  numButtons[8] = new CalcButton(120, 200).asNumber(6, 60, 60);
  numButtons[9] = new CalcButton(120, 140).asNumber(9, 60, 60);
  // operators
  opButtons[0] = new CalcButton(0, 80).asOperator("+", 60, 60);
  opButtons[1] = new CalcButton(60, 80).asOperator("-", 60, 60);
  opButtons[2] = new CalcButton(240, 80).asOperator("C", 60, 60);
  opButtons[3] = new CalcButton(180, 320).asOperator("=", 120, 60);
  opButtons[4] = new CalcButton(120, 80).asOperator("×", 60, 60);
  opButtons[5] = new CalcButton(180, 80).asOperator("÷", 60, 60);
  opButtons[6] = new CalcButton(180, 200).asOperator("±",60,60);
  opButtons[7] = new CalcButton(180, 140).asOperator("^",60,60);
  // SP Buttons
  spButtons[0] = new CalcButton(120, 320).asSpecial(".",60,60);



  //CalcButton[0]= new CalcButton(10, 275).asSpecial(".");

  // set the initial value of first num to true
  firstNum = true;
}

void draw() {
  // draw number buttons
  for (int i=0; i<numButtons.length; i++) 
  {
    CalcButton inumButton = numButtons[i];
    inumButton.display();
  }
  // draw operators
  for (int i=0; i<opButtons.length; i++) 
  {
    opButtons[i].display();
  }
  for (int i=0; i<spButtons.length; i++) 
  {
    spButtons[i].display();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) 
  {
    numButtons[i].click();
    if (numButtons[i].overBox) 
    {
      if (firstNum) 
      {
        println(i + " " + numButtons[i].numButtonValue);
        valueToCompute += int(numButtons[i].numButtonValue);
        displayValue = valueToCompute;
      } else
      {
        valueToCompute2 += int(numButtons[i].numButtonValue);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i=0; i<opButtons.length; i++) 
  {
    opButtons[i].click();
    if (opButtons[i].overBox) 
    {
      // Add
      if (opButtons[i].opButtonValue == "+") 
      {
        if (result !=0) 
        {
          opValue = '+';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else 
        {
          opValue = '+';
          firstNum = false;
          displayValue = "+";
        }
        // Subtract
      } else if (opButtons[i].opButtonValue == "-") 
      {
        if (result !=0) 
        {
          opValue = '-';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "-";
        } else 
        {
          opValue = '-';
          firstNum = false;
          displayValue = "-";
        }
        // Clear
      } else if (opButtons[i].opButtonValue == "C")
      {
        displayValue = "0";
        opValue = 'C';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI = 0;
        result = 0;
        firstNum = true;
        // Equals
      } else if (opButtons[i].opButtonValue == "=")
      {
        // perform calculation
        firstNum = true;
        performCalculation();
        //Times
      } else if (opButtons[i].opButtonValue == "×")
      {
        if (result !=0) 
        {
          opValue = 'X';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "×";
        } else 
        {
          opValue = 'X';
          firstNum = false;
          displayValue = "×";
        }
      } else if (opButtons[i].opButtonValue == "÷")
      {
        if (result !=0) 
        {
          opValue = '/';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "÷";
        } else 
        {
          opValue = '/';
          firstNum = false;
          displayValue = "÷";
        }
      } else if(opButtons[i].opButtonValue == "±")
      {
        opValue = 'n';
        performCalculation();
      } else if(opButtons[i].opButtonValue == "^")
      {
        opValue = '^';
        performCalculation();
      }
    }
  }
  for (int i=0; i<spButtons.length; i++)
  {
    spButtons[i].click();
    if (spButtons[i].overBox)
    {
      if (spButtons[i].spButtonValue == ".") 
      {
        //concantenate the values clicked on
        if (spButtons[i].overBox && firstNum == true)
        {
          valueToCompute += spButtons[i].spButtonValue;
          displayValue = valueToCompute;
        } else if (spButtons[i].overBox && firstNum == false)
        {
          valueToCompute2 += spButtons[i].spButtonValue;
          displayValue = valueToCompute2;
        }
      }
    }
  }
}

void performCalculation() {
  // set string values to integers
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);
  // perform calculation based on the papropriate operator
  if (opValue == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '-')
  {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == 'X')
  {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == '^')
  {
    result = valueToComputeI * valueToComputeI;
    displayValue = str(result);
  }else if (opValue == '/')
  {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  } else if (opValue == 'n')
  {
    if (firstNum)
    {
      valueToComputeI = valueToComputeI*-1;
      displayValue = str(valueToComputeI);
    } else
    {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue = str(valueToComputeI);
    }
  }
  // let = work multiple times
  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}

void updateDisplay() {
  fill(100);
  rect(0, 0, 300, 80);
  fill(255);
  textSize(25);
  text(displayValue, 10, 50);
  text(valueToCompute + " " + opValue + " " + valueToCompute2, 20, 25);
}
```
Class CalcButton
```
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
```
---
### Graphics Random Line Generator

![Background](https://raw.githubusercontent.com/edwardprutski/portfolio/master/FolderPortfolio/game%20art%20stuff/Background.png)

In this application it randomly generates lines creating intresting looking patterns good enough to use as a computer wallpaper if desired.

Code

main randomlines
```
Lines[] myLines = new Lines[50];

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  for (int i = 0; i<myLines.length; i++) {

    myLines[i] = new Lines(random(width), random(height), random(1), random(1, 7));
  }
}

void draw() {
  if (frameCount>1000) {
    frameCount=0;
    background(0);
  } else for (int i=0; i<myLines.length; i++) {
    myLines[i].display();
  }
}
```
class Lines
```
class Lines {
  //Member Vari
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;

  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
  }

  //display method
  void display() {
    //strokeW = .4;
    //pointCount = random(1, 20);
    //stroke(0);
    //strokeWeight(strokeW);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>75) {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, pointCount*random(1,5));
      } else if (random(100)>70) {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount*random(1,5));
      } else if (random(100)>45) {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveRight(xpos, ypos, pointCount*random(1,5));
      } else {
        stroke(random(255),random(255),random(255));
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount*random(1,5));
      }
    }
  }
  // move right
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }
  // move left
  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
    }
  }
  // move Down
  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY + i;
    }
  }
  // move Up
  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY - i;
    }
  }
}
```
