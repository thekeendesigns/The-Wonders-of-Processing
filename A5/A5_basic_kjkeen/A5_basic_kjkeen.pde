// Kevin Keen
// 20720531

float 
circleX,
circleY,
brixX = 1000,
brixY = 0;

int numberOfBrix = int(random(3,10));

void setup() {
  size(1000, 500);
  circleX = 400;
  circleY = 250;
  ellipse(circleX, circleY, 20, 20); // Start The Circle In The Middle 
}

void draw() {  //<>//
  background(255);
  fill(0, 0, 255);
  stroke(#000000);
  
  brixX -= 1; // Speed of Brix
  
  for (int brixY = 0; brixY < 20 * numberOfBrix; brixY += 20) {
    
    rect(brixX, brixY, 50, 20); // Blue Rect
  }
  
  if (circleX > brixX && circleX < brixX + 50 && circleY > 0 
  && circleY < 20 * numberOfBrix) { // Hittest for rect
      
    numberOfBrix -= 1;
    circleX = brixX;
    circleY = height/2;
  }

  if (numberOfBrix == 0) {
      
    brixX = 0;
    textSize(25);
    text("Game Over, You Won!", 500, 250);
    text("Press 'R' to Play Again", 500, 300);
  }
  
  if (brixX < -50) { // Prevents random from changing 60x/sec, and resets column
      
    numberOfBrix = int(random(3,10));
    textSize(25);
    text("Game Over, You Lose!", 500, 250);
    text("Press 'R' to Play Again", 500, 300);
  }
   //<>// //<>//
  noStroke();
  fill(255, 0, 0);
  ellipse(circleX, circleY, 30, 30); // Red Circle
}

void keyPressed() {

  if (key == CODED) { // When ArrowKeys Pressed, Move Red Circle
    if (keyCode == UP) {
      circleY -= 8;
      } else if (keyCode == DOWN) {
        circleY += 8;
        } else if (keyCode == RIGHT) {
          circleX += 8;
          } else if (keyCode == LEFT) {
            circleX -= 8;
            } 
  }  
  
  if (key == 'c' || key == 'C') {
      numberOfBrix -= 1; // Cheat Code
    }
   
  if (key == 'r' || key == 'R') {
      brixX = 1000; // Restarts The Game
      numberOfBrix = int(random(3,10));
    }
}
