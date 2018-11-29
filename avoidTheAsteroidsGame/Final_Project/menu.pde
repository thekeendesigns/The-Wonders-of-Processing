boolean gameStart = false;
boolean gameMenu = true;

boolean outOfOxyMenu = false;
boolean outOfHealthMenu = false;
boolean win = false;

// Start Menu
void gameMenuStart() {
  if (gameMenu == true) {
  fill(#5FE0D4);
  textSize(20);
  textAlign(LEFT);
  text("LEFT-CLICK TO 'INFINITY AND BEYOND'", width/5, height/2.5);
  textSize(14);
  text("avoid the asteroids, retrieve your flag, and return it", width/5, height/2);
  text("if you collide with a asteroid, you take damage", width/5, height/2 + 20);
  text("you die if health = 0 or when you run out of oxygen", width/5, height/2 + 40);
  text("press 'space bar' to have a brief shield", width/5, height/2 + 60);
  text("press 'S' to turn off shield", width/5, height/2 + 80);
  
    /* MOUSEPRESSED EVENT (1/1) */
    if (mousePressed) {
      gameMenu = false;
      gameStart = true;
    }
    /* MOUSEPRESSED EVENT (1/1) */
  }
}
// Displays when you run out of oxygen
void outOfOxyMenu() {
  
  if (outOfOxyMenu == true) {
    
    fill(#BB003E); 
    textAlign(CENTER);
    textSize(20);
    text("You ran out of oxygen", width/2, height/2);
    text("LEFT-CLICK, to restart", width/2, height/1.8);
    textSize(14);
    //text("Press any key, to try again", width/2, height/1.7);
    gameStart = false;
    
    if (mousePressed) {
      outOfOxyMenu = false;
      gameStart = true;
    }
  }
}

// Displays when you run out of health
void outOfHealth() {
  
  if (outOfHealthMenu == true) {
    fill(#BB003E); 
    textAlign(CENTER);
    textSize(20);
    text("You couldn't handle asteroids", width/2, height/2);
    text("LEFT-CLICK, to restart", width/2, height/1.8);
    textSize(14);
    //text("Press any key, to try again", width/2, height/1.7);
    gameStart = false;
  }
}

// Displays when you win
void winnerMenu() {
  
  if (win == true) {
    fill(#1DB954); 
    textAlign(CENTER);
    textSize(20);
    text("You retrieved the flag!", width/2, height/2);
    text("Houston's proud", width/2, height/1.8);
    text("LEFT-CLICK, to restart", width/2, height/1.6);
    textSize(14);
    //text("Press any key, to try again", width/2, height/1.7);
    gameStart = false;
  }
}
