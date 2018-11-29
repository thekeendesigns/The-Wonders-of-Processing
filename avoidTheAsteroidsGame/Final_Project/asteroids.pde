// Keeps track of how many asteroids we want
int num_rocks = 100;

  /* ARRAYS (2/2) */
int[] rockX = new int[num_rocks];
int[] rockY = new int[num_rocks];
  /* ARRAYS (2/2) */
  
// Size of Asteroid
int[] rockSize = new int[num_rocks];

int shieldColour = #3A3A3C;
void asteroids() {
  
  /* FOR LOOP (1/2) */
  for (int loc = 0; loc < num_rocks; loc++) {
    // Display asteroids
    fill(shieldColour);
    noStroke();
    ellipse(rockX[loc], rockY[loc], rockSize[loc], rockSize[loc]);
    
    /* BUILT IN FUNCTIONS (1/2) */
    // Move Asteroids in Random Directions
    rockX[loc] += int(random(5, 15));
    rockX[loc] -= int(random(5, 15));
    rockY[loc] += int(random(5, 15));
    rockY[loc] -= int(random(5, 15));
    /* BUILT IN FUNCTIONS (1/2) */
    
    // Keep Asteroids within canvas
    rockX[loc] = constrain(rockX[loc], 0, width);
    rockY[loc] = constrain(rockY[loc], 0, height);
    
  /* FOR LOOP (1/2) */
  
  /* CONDITIONAL (1/2) & HITTEST (1/2) */
  // Hittest
  if (powerSwitch == false) {
    if (mouseX >= rockX[loc] - rockSize[loc]/2 && mouseX <= rockX[loc] + rockSize[loc]/2
      && mouseY >= rockY[loc] - rockSize[loc]/2 && mouseY <= rockY[loc] + rockSize[loc]/2) {
        health -= 22;
        background(#BB003E);
      }
  }
  /* CONDITIONAL (1/2) & HITTEST (1/2) */
  
  if (powerSwitch == true || invincibleStart == true) {
    if (mouseX + powerSize/2 >= rockX[loc] - rockSize[loc]/2 && mouseX - powerSize/2 <= rockX[loc] + rockSize[loc]/2
      && mouseY + powerSize/2 >= rockY[loc] - rockSize[loc]/2 && mouseY - powerSize/2 <= rockY[loc] + rockSize[loc]/2) {
      rockSize[loc] = -2; // Makes rock sizes smaller
      health -= 0; // When shields on, take no damage
   } 
  } else {
     rockSize[loc] = 30;
  }
 }
}
