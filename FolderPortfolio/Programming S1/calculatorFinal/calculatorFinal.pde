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