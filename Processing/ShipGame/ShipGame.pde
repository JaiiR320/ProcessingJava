Ship ship = new Ship();
Bullet shotA = new Bullet();
Bullet shotB = new Bullet();

void setup() {
  size(800, 800);
}

void draw() {
  background(100);
  
  //Ammo Crate

  ship.show();
  ship.update();
  
  shotA.set();
  shotB.set();
  shotA.show();
  shotB.show();
  
  if(mousePressed == true){
    shotA.hide();
    shotB.hide();
  }
  
  shotA.setxy(100, 100);
  shotB.setxy(ship.x, ship.y);
  
  fill(0, 77, 0, 60);
  stroke(0, 77, 0);
  strokeWeight(3);
  rectMode(CENTER);
  rect(725, 680, 100, 80);
  strokeWeight(10);
  fill(0);
  textSize(16);
  text("Ammo Crate", 677, 625);
}
