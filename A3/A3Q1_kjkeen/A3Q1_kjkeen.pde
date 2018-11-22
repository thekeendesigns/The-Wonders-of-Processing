// Kevin Keen
// #20720531

float ballSpeedX = 0; // Variable of Ball 1
float ballSpeedX2 = 0; // Variable of Ball 2 
float ballSpeedX3 = 0; // Variable of Ball 3 

void setup() {
  size(400, 300);
  noStroke();
  frameRate(30);
}

void draw() {
  background(240); // Background Reset
  
  // Left Tree
  fill(#0A640A);
  ellipse(180, 150, 85, 85);
  rect(172, 150, 15, 105);

  // Top Ball
  ballSpeedX = (ballSpeedX + random(1,4)) % width;
  fill(#FF0000);
  ellipse(ballSpeedX, 100, 20, 20);
  
  // Middle Ball
  ballSpeedX2 = (ballSpeedX2 + random(1,4)) % width;
  fill(#00FF00);
  ellipse(ballSpeedX2, 150, 20, 20);
  
  // Bottom Ball
  ballSpeedX3 = (ballSpeedX3 + random(1,4)) % width;
  fill(#0000FF);
  ellipse(ballSpeedX3, 200, 20, 20);

   // Right Tree
  fill(#0A640A);
  ellipse(270, 170, 85, 85);
  rect(262, 150, 15, 105);
}

void keyPressed() {
  ballSpeedX = 0;
  ellipse(ballSpeedX, 100, 20, 20);
  ballSpeedX2 = 0;
  ellipse(ballSpeedX2, 150, 20, 20);
  ballSpeedX3 = 0;
  ellipse(ballSpeedX3, 200, 20, 20);
}

void mousePressed() {
  ballSpeedX = ballSpeedX + 40;
  ballSpeedX2 = ballSpeedX2 - 10;
  ballSpeedX3 = ballSpeedX- 35;
}
