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