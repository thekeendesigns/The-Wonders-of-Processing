// Kevin Keen
// 20720531

// In the advanced version, added score counter,
// and improved hittest

float 
circleX,
circleY,
brixX = 400,
brixY = 0;

int numberOfBrix = int(random(5,10)),
    counter; // Adds Score

void setup() {
  size(400, 500);
}

void draw() { 
  background(255);
  fill(0, 0, 255);
  stroke(#000000);
  
  brixX -= 2; // Speed of Brix
  
  for (int brixY = 0; brixY < 20 * numberOfBrix; brixY += 20) {
    
    rect(brixX, brixY, 50, 20); // Blue Rect
  }
  
  fill(#000000);
  textSize(25);
  text("Score:" + counter, 250, 475); // Counts Score
  
  if (pmouseY + 17 > 0 && mouseY - 15 == 20 * numberOfBrix) { // Hittest for rect
      
    numberOfBrix -= 1;
    counter += random(1, 100);
  }
  
  if (brixX < -100) { // Prevents random from changing 60x/sec, and resets column
      
    numberOfBrix = int(random(3,10));
    brixX = 400;
  }

  noStroke();
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 30, 30); // Red Circle
}
