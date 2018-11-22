// Kevin Keen //<>//
// ID: 20720531

float gemX = random(0, 300), // Random Start Placement of Number (1)
      gemY = 75; // Start Location of Number (1)
int score = 0, // Score Counter
    scoreGem = int(random(-30, 30)), // Number For Score (1)
    paddleHits = 0, // Paddle Hits
    gem = int(random(-30, 30)); // Random Number Generator (1)
boolean on = true;

void setup() {
  size(350, 600);
}

void draw() {
  
  background(#000000);
  
  // Starting Screen
  if (on) {
  textAlign(CENTER);
  textSize(24);
  fill(#ff0000);
  text("I Want to Play A Game", 175, 220); // Welcome To Poggers
  textSize(18);
  fill(#ffffff);
  text("Reach 100 Points, Or Else", 175, 260); // Try To Reach 100
  text("Press ' S ' to Play", 175, 330); // Press S To Play
  }
  
  if (key == 's' || key == 'S') {
    
  on = false; // Ends Starting Screen, Starts Game
  
  // Line Divider
  strokeWeight(2);
  stroke(#ffffff);
  line(0, 75, 350, 75);
  
  // Red Slider
  noStroke();
  fill(#ff0000);
  rectMode(CENTER);
  rect(mouseX, 600, 70, 25);
  
  // Start Numbers Falling
  fill(#ffffff);
  textSize(18);
  gemY = random(3,6) + gemY; 
  text(gem, gemX, gemY);
 
  // Score Counter
  textSize(24);
  textAlign(LEFT);
  fill(#ffffff);
  noStroke();
  text("Score:", 40, 35);
  text(score, 120, 35);
  
  // Paddle Hits Counter
  textSize(24);
  fill(#ffffff);
  textAlign(LEFT);
  text("Paddle Hits:", 40, 65);
  text(paddleHits, 185, 65);
  
  // Conditions For Score Count & Paddle Hits
  if (mouseX + 35 >= gemX && mouseX - 35 <= gemX 
  && gemY >= 590) {
    println(score + "+" + gem + " and gemY = " + gemY);
    scoreGem = int(random(-30, 30)); // Randomizing Number
    score += gem; // Add Number to Score Count
    paddleHits += 1; // When number touches paddle, +1
    
    // Activates Short Color Indicator
    fill(#fbdb28);
    rect(mouseX, 600, 70, 25);
  }
  
  // If Past 25 Mark
  if (score >= 25) {
    gemY = 2.5 + gemY; // Numbers Drop Fast
  }
  
  // If Past 50 Mark
  if (score >= 50) {
    gemY = 3.5 + gemY; // Numbers Drop Faster
  }
  
  // If Past 75 Mark
  if (score >= 75) {
    gemY = 4.2 + gemY; // TRY TO CATCH THESE NUMBERS
  }
  
  
  // Recycle Number If It Touches Floor
  if (gemY >= 590) {
  // If Number (1) Passes Out Screen
  gemY = 75;
  gemX = random(0, 280);
  gem = int(random(-30,30));
  gemY = random(3,6) + gemY;
  }
  
  if (score >= 100) { // Stop Looping
  // Game Over Statement
  textAlign(CENTER);
  fill(#ff0000);
  text("Game Over", 175, 250);
  textSize(18);
  fill(#ffffff);
  text("You managed to play", 175, 300);
  text("my game and survive!", 175, 325);
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
  
  gemY = -10; // Stop Number From Continuing to Fall Down
    }
  }
}

void mousePressed() {
  
  if (score >= 100) {// Did we win? If so, reset game
  gemY = 75;
  score = 0;
  paddleHits = 0; 
  }  
  
}
