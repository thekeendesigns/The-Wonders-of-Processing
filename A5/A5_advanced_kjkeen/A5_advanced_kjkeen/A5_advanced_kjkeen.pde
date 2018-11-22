// Kevin Keen
// 20720531

// In the advanced version, added a score counter, and made the edge of the red ball respond to the hittest //

float 
circleX,
circleY,
brixX = 1000,
brixY = 0;

int numberOfBrix = int(random(3,10)),
    counter; // Adds Score

void setup() {
  size(1000, 500);
  //Start The Circle In The Middle of Canvas
  circleX = 500;
  circleY = 250;
}

void draw() {  //<>//
  background(255);
  fill(0, 0, 255);
  stroke(#000000);
  
  brixX -= 1; // Speed of Brix
  
  for (int brixY = 0; brixY < 20 * numberOfBrix; brixY += 20) {
    
    rect(brixX, brixY, 50, 20); // Blue Rect
  }
  
  fill(#000000);
  textSize(25);
  text("Score:", 20, 30);
  text(counter, 110, 30);
  
  if (circleX + 15 > brixX && circleX - 15 < brixX + 50 && circleY + 15 > 0 
  && circleY - 15 < 20 * numberOfBrix) { // Hit test for outer circle, not inner x and y
      
    numberOfBrix -= 1;
    circleX = brixX;
    circleY = height/2;
    counter += random(1, 100);
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
  //<>//
  noStroke();
  fill(255, 0, 0);
  ellipse(circleX, circleY, 30, 30); // Red Circle
}

void keyPressed() {

  if (key == CODED) { // When ArrowKeys Pressed, Move Red Circle
    if (keyCode == UP) {
      circleY -= 6;
      } else if (keyCode == DOWN) {
        circleY += 6;
        } else if (keyCode == RIGHT) {
          circleX += 6;
          } else if (keyCode == LEFT) {
            circleX -= 6;
            } 
  }  
  
  if (key == 'c' || key == 'C') {
      numberOfBrix -= 1; // Cheat Code
      counter += random(1, 100);
    }
   
  if (key == 'r' || key == 'R') { // Restarts The Game
      brixX = 1000; 
      numberOfBrix = int(random(3,10));
      counter = 0;
      circleX = 500;
      circleY = 250;
    }
}
