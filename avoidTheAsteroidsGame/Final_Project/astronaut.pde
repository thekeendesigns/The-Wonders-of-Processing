int helmetSize = 30;
int mainHelmCol = 255;
int baseX = 0;
int baseY = 450;
int baseW = 60;
int baseH = 100;

void astronaut() {
 
  // Cable Line
  noFill();
  stroke(255);
  strokeWeight(4);
  bezier(0, height/2, 500, 520, 500, 280, x, y);
  
  // Helmet Base
  stroke(#5FE0D4, 40);
  strokeWeight(8);
  fill(mainHelmCol);
  ellipse(x, y, helmetSize, helmetSize);
  
  // Lenses
  stroke(#012345);
  strokeWeight(2);
  fill(#5FE0D4);
  ellipse(x, y - 3, 21, 14);
  
  // Antenna
  stroke(255);
  fill(255);
  line(x + 12, y - 20, x + 12, y - 3);
  ellipse(x + 12, y - 25, 5, 5);
}

void base() {
  fill(#5FE0D4, 120);
  rect(baseX, baseY, baseW, baseH);
  
  // To protect yourself from asteroids
  if (x >= baseX && x <= baseX + baseW 
  && y >= baseY && y <= baseY + baseH) {
    health -= 0;
    
  }
}
