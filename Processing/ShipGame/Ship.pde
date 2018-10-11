class Ship {
  int x = 200;
  int y = 760;
  int val;

  void show() {
    fill(65);
    noStroke();
    rectMode(CENTER);
    rect(this.x, this.y, 40, 40);
  }

  void update() {
    this.x = mouseX;
    this.x = constrain(this.x, 50, 630);
  }
}
