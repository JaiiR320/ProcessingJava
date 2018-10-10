Ship ship;


void setup() {
  size(800, 800);
  ship = new Ship();
}

void draw() {
  background(100);
  
  ship.show();
  ship.update();
}
