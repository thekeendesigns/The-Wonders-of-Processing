float flagX = random(800, 900);
float flagY = random(300, 800);

// Interpolation Floats
float x;
float y;

boolean captured = false;

void flag() {
  
  // Pole
  fill(255);
  stroke(255);
  strokeWeight(6);
  strokeCap(SQUARE);
  rect(flagX, flagY, 1, 20);
  
  // Flag
  fill(#5FE0D4);
  noStroke();
  rect(flagX - 3, flagY - 21, 30, 18); 
}

void capture() {
  
  /* CONDITIONAL (2/2) & HITTEST (2/2) */
  if (x >= flagX && x <= flagX + 20 && y >= flagY && y <= flagY + 18) {
    captured = true;
  }
  
  if (captured == true) {
    flagX = x;
    flagY = y;
  }
  /* CONDITIONAL (2/2) & HITTEST (2/2) */
  
  // Hittest for flag return
  if (flagX >= baseX && flagX <= baseX + baseW/1.5 && flagY >= baseY && flagY <= baseY + baseH/1.5) {
    win = true;
    health -= 0;
  }
}
