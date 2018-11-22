// Kevin Keen
// ID: 20720531

float gemX = random(0, 300), // Random Start Placement of Number
      gemY = 75; // Start Location of Number
int score = 0, // Score Counter
    paddleHits = 0, // Paddle Hits
    gem = int(random(-30, 30)), // Random Number
    scoreGem = int(random(-30, 30)); // Number For Score  
boolean win = false; // Won Yet?
   
void setup() {
  
  size(350, 600);
}

void draw() {
  
  background(255);
   
  // Black Line Divider
  strokeWeight(2);
  stroke(#000000);
  line(0, 75, 350, 75);
  
  // Red Slider
  noStroke();
  fill(#ff0000);
  rectMode(CENTER);
  rect(mouseX, 600, 70, 25);
  
  // Start Numbers Falling
  textSize(18);
  gemY = random(3,6) + gemY;
  text(gem, gemX, gemY);
 
  // Score Counter
  textSize(24);
  fill(#000000);
  noStroke();
  text("Score:", 40, 35);
  text(score, 120, 35);
  
  // Paddle Hits Counter
  textSize(24);
  fill(#000000);
  text("Paddle Hits:", 40, 65);
  text(paddleHits, 185, 65);
  
  // Conditions For Score Count & Paddle Hits
  if (mouseX + 35 >= gemX && mouseX - 35 <= gemX  //<>//
  && gemY >= 590) {
    println(score + "+" + gem + " and gemY = " + gemY); 
    scoreGem = int(random(-30, 30)); // Randomizing Number
    score += gem; // Add Number to Score Count
    paddleHits += 1; // When number touches paddle, +1
  }
  
  // Recycle Number If It Touches Floor
  if (gemY >= 590) {
  gemY = 75;
  gemX = random(0, 300);
  gem = int(random(-30,30));
  gemY = random(3,6) + gemY;
  }
  
  if (score >= 100) { // Stop Looping
  // Game Over Statement
  textAlign(CENTER);
  text("Game Over", 175, 250);
  textSize(18);
  text("You managed to play", 175, 300);
  text("my game bug-free!", 175, 325);
  text("Left-click to play again!", 175, 375);
  stroke(255, 0, 0);
  
  // Red Slider
  noStroke();
  fill(#ff0000);
  rectMode(CENTER);
  rect(mouseX, 600, 70, 25);
  
  // Score Counter
  textSize(24);
  textAlign(LEFT);
  fill(#ff0000);
  noStroke();
  text("Score:", 40, 35);
  text(score, 120, 35);
  
  win = true;  // If player wins, its true
  gemY = -10; // Stop Number From Continuing to Fall Down //<>//
 }
}

void mousePressed() {
  
  if (score >= 100) {// Did we win? If so, reset game
  gemY = 75;
  score = 0;
  paddleHits = 0; 
  }  
}
