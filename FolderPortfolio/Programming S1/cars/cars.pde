Car[] cars = new Car[2000];

void setup() {
  size (1920, 1080);
  for (int i= 0; i<cars.length;i++) {
    cars[i] = new Car();
  }
}

void draw() {
  background(0);
  for (int i =0;i<cars.length;i++) {
    cars[i].display();
    cars[i].drive();
  }
}