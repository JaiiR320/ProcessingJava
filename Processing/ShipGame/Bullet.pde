class Bullet {
  int x;
  int y;
  int alpha;
  
  void set() {
    fill(255, 102, 0, this.alpha);
    noStroke();
    rectMode(CENTER);
    rect(x, y, 5, 15);
  }
  
   void hide() {
     this.alpha = 0;
   }
   
   void show(){
     this.alpha = 255;
   }
  
  void setxy(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void shoot() {
    this.y += 5;
  }
}
