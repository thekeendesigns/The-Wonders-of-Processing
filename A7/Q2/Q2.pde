// Kevin Keen
// 20720531

// Enhancments:
// Added a pause button
// Added a code that determines winner

float[] bx = new float[3];
float[] by = new float[3];
float[] bc = new float[3];

boolean start = true; // Starts, Stops, and Resumes Game

void setup() {
  size(600, 600);
  textSize(15);
  
  // Start Balls In Random Places
  bx[0] = random(0, width);
  bx[1] = random(0, width);
  bx[2] = random(0, width);
  
  by[0] = random(0, height);
  by[1] = random(0, height);
  by[2] = random(0, height);
}

void draw() {
  
  if (start == true) {
    background(255);
    
    ballOne(1); 
    // Moves Ball 1
    bx[0] += random(-1, 3);
    by[0] += random(-3, 3);
    
    ballTwo(2);
    // Moves Ball 2
    bx[1] += random(-1, 3);
    by[1] += random(-3, 3);
    
    ballThree(3);
    // Moves Ball 3
    bx[2] += random(-1, 3);
    by[2] += random(-3, 3);
    
    textAlign(LEFT);
    
    // Display Ball 1 Off Text
    if (bx[0] > width + 30) {
      fill(0);
      textSize(13);
      text("Ball 1 is off the screen", 20, 530);
        if (bx[1] < bx[0] && bx[2] < bx[0]) { // Does ballOne win?
          textSize(20);
          text("Ball 1 is the winner", 300, 300);
        }
    }
    
    // Display Ball 2 Off Text
    if (bx[1] > width + 30) {
      fill(0);
      textSize(13);
      text("Ball 2 is off the screen", 20, 550);
      if (bx[0] < bx[1] && bx[2] < bx[1]) { // Does ballTwo win?
          textSize(20);
          text("Ball 2 is the winner", 300, 300);
        }
    }
    
    // Display Ball 3 Off Text
    if (bx[2] > width + 30) {
      fill(0);
      textSize(13);
      text("Ball 3 is off the screen", 20, 570);
      if (bx[1] < bx[2] && bx[0] < bx[2]) { // Does ballThree win?
          textSize(20);
          text("Ball 3 is the winner", 300, 300);
        }
    }
 }
}

void ballOne(int number) { // Creates Ball 1
  bc[0] = 0;
  float size = 30;
  
  fill(bc[0]);
  text(number, bx[0] - size, by[0]);
  fill(bc[0]);
  ellipse(bx[0], by[0], size, size);
}

void ballTwo(int number) { // Creates Ball 2
  bc[1] = 200;
  float size = 30;
  
  text(number, bx[1] - size, by[1]);
  fill(bc[1]);
  ellipse(bx[1], by[1], size, size);
}

void ballThree(int number) { // Creates Ball 3
  bc[2] = 100;
  float size = 30;
  
  fill(bc[0]);
  text(number, bx[2] - size, by[2]);
  fill(bc[2]);
  ellipse(bx[2], by[2], size, size);
}

void keyPressed() { // Pauses Game
  
  if (key == 'P' || key == 'p') {
    start = !start;
    textAlign(CENTER);
    text("Paused", 300, 300);
  } 
}
