var xspd = [-5, -3, 3, 5];
var yspd = [-6, -4, -2, 2, 4, 6];

var setx = 0;
var sety = 0;

function setup() {
  createCanvas(700, 600);
  frameRate(60);
  randxy();
}

var p1y = 300;
var p2y = 300;

var p1Score = 0;
var p2Score = 0;

var ballx = 325;
var bally = 300;

function draw() {
  background(85);

  //Paddles
  rectMode(CENTER);
  noStroke();
  fill(255);
  rect(30, p1y, 15, 100);
  rect(670, p2y, 15, 100);

  //Ball
  fill(180);
  ellipse(ballx, bally, 25, 25);


  //Ball Bounce
  if (ballx > 690) {
    ballx = 350;
    bally = 300;
    p1Score += 1;
    randxy();
  } else if (ballx < 10) {
    ballx = 350;
    bally = 300;
    p2Score += 1;
    randxy();
  }
  
  //Hits top
  if (bally < 10 || bally > 590) {
    sety = sety * -1;
  }

  ballx += setx
  bally += sety;

  //Paddle Collision
  if (ballx < 50 && (bally < p1y + 50 && bally > p1y - 50)) {
  	setx *= -1;
  }

  if (ballx > 650 && (bally < p2y + 50 && bally > p2y - 50)) {
  	setx *= -1;
  }
  
  
  

  //Movement
  if (keyIsDown(73)) {
    p2y -= 5;
  } else if (keyIsDown(75)) {
    p2y += 5;
  }

  if (keyIsDown(87)) {
    p1y -= 5;
  } else if (keyIsDown(83)) {
    p1y += 5;
  }
  
  p1y = constrain(p1y, 50, 550);
  p2y = constrain(p2y, 50, 550);

  //Score
  textAlign(CENTER);
  textSize(30);
  text(p1Score, 175, 40);
  text(p2Score, 525, 40);

  text(setx + " " + sety, 250, 250);
}

function randxy() {
  var pickx = int(random(0, 3));
  var picky = int(random(0, 5));

  setx = xspd[pickx];
  sety = yspd[picky];
}