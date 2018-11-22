// Kevin Keen
// #20720531

// Tree Movement
float treeBushSpeed1 = 0;
float treeTrunkSpeed1 = -7;
float treeBushSpeed2 = 100;
float treeTrunkSpeed2 = 93;
// Circle Growth
float circleGrowX = 0;
float circleGrowY = 0;
// Transparent Function
float transparent = 255;
// Sun
float sunX = -40;

void setup() {
  size(400, 300);
  noStroke();
  background(240);
}

void draw() {
  
  background(240);
  // Land
  fill(#98FB98);
  rect(0, 255, 400, 150);
  
  // Red Circle
  stroke(#000000);
  fill(#FF0000);
  circleGrowX = (circleGrowX + 0.6) % 85;
  circleGrowY = (circleGrowY + 0.6) % 85;
  ellipse(mouseX, mouseY, circleGrowX, circleGrowY);
  
  // Sun
  noStroke();
  fill(255,255,0);
  ellipse(sunX, 80, 60, 60);
  
  // Left Tree
  noStroke();
  fill(10, 100, 10);
  treeBushSpeed1 = (treeBushSpeed1 + 2) % 555;
  treeTrunkSpeed1 = (treeTrunkSpeed1 + 2) % 555;
  ellipse(treeBushSpeed1, 150, 85, 85);
  rect(treeTrunkSpeed1, 150, 15, 105);
  
  // Right Tree
  noStroke();
  fill(10, 100, 10, transparent);
  treeBushSpeed2 = (treeBushSpeed2 + 2) % 555;
  ellipse(treeBushSpeed2, 170, 85, 85);
  treeTrunkSpeed2 = (treeTrunkSpeed2 + 2) % 555;
  rect(treeTrunkSpeed2, 180, 15, 105);
}

void mousePressed() {
   
  // Left Tree
  frameRate(30);
  treeBushSpeed1 = (treeBushSpeed1 + 2) % 555;
  treeTrunkSpeed1 = (treeTrunkSpeed1 + 2) % 555;
  ellipse(treeBushSpeed1, 150, 85, 85);
  rect(treeTrunkSpeed1, 150, 15, 105);
  
  // Right Tree
  transparent = 100;
  treeBushSpeed2 = (treeBushSpeed2 + 2) % 555;
  ellipse(treeBushSpeed2, 170, 85, 85);
  treeTrunkSpeed2 = (treeTrunkSpeed2 + 2) % 555;
  rect(treeTrunkSpeed2, 180, 15, 105);
}

void mouseReleased() {
   
  transparent = 255;
  // Left Tree
  frameRate(60);
  treeBushSpeed1 = (treeBushSpeed1 + 2) % 555;
  treeTrunkSpeed1 = (treeTrunkSpeed1 +2) % 555;
  ellipse(treeBushSpeed1, 150, 85, 85);
  rect(treeTrunkSpeed1, 150, 15, 105);
  
  // Right Tree
  fill(10, 100, 10, transparent);
  treeBushSpeed2 = (treeBushSpeed2 + 2) % 555;
  ellipse(treeBushSpeed2, 170, 85, 85);
  treeTrunkSpeed2 = (treeTrunkSpeed2 + 2) % 555;
  rect(treeTrunkSpeed2, 180, 15, 105);
}

void keyPressed() {
  sunX = (sunX + 9) % 490;
  noStroke();
  fill(255,255,0);
  ellipse(sunX, 80, 60, 60);
}
