int powerSize = 150;
int timeAbility = 60;
boolean powerSwitch = false;
boolean manaSwitch = true;
boolean invincibleStart = false;


void ability() {
  
  /* BUILT IN FUNCTIONS (2/2) */
  // Moves 9% of the way to mouse location each frame
  x = lerp(x, mouseX, 0.09);
  y = lerp(y, mouseY, 0.09);
  /* BUILT IN FUNCTIONS (2/2) */
  
  if (key == ' ') { // Activates ability
      powerSwitch = true;
    
    // Stops ability
    if (key == 'x' ||key == 'X' || mana == 0) {
      powerSwitch = false;
      manaSwitch = false;
  }
    
    if (powerSwitch == true) {
      // Shield
      noFill();
      stroke(#5FE0D4, 120);
      strokeWeight(1);
      ellipse(x, y, powerSize, powerSize);
      // Text
      textAlign(CENTER);
      textSize(24);
      fill(#BB003E);
      text("Your're Invincible", width/2, height/2);
      // Start Mana Depletion
      manaSwitch = true;
  }
  
    if (manaSwitch == true) { 
      mana -= 6; // Uses up 3 mana each frame
  }
}
 
   /* KEYPRESSED EVENT (1/1) */
   // To turn off ability
   if (key == 'x' ||key == 'X' || mana == 0) {
     powerSwitch = false;
     manaSwitch = false;
   }
   /* KEYPRESSED EVENT (1/1) */
   
   // This code is for a brief shield on load of game
   if (gameStart == true) {
     timeAbility -= 1;
     invincibleStart = true; 
     if (timeAbility <= 0) {
       invincibleStart = false;
     }
   }
     
   if (invincibleStart == true) {
    noFill();
    stroke(#5FE0D4, 120);
    strokeWeight(1);
    ellipse(x, y, powerSize, powerSize);
    textAlign(CENTER);
    textSize(24);
    fill(#1DB954);
    text("Temporary Shield Activated", width/2, height/2);
   }
}
