class Ship {
  int x = 200;
  int y = 200;
  int val;

  void show() {
    fill(65);
    noStroke();
    rectMode(CENTER);
    rect(this.x, this.y, 40, 40);
  }

  void update() {
    if (keyPressed == true) {
      if (key == 'a') {
        this.x -= 5;
      }
      if (key == 'd') {
        this.x += 5;
      }
    }
  }
}
