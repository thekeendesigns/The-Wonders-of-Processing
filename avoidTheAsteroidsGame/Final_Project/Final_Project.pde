// Kevin Keen____kjkeen

void setup() {
  size(1000, 1000);
  smooth();
  
  // Intializes Asteroids
  for (int loc = 0; loc < num_rocks; loc++) {
    rockX[loc] = int(random(0, width));
    rockY[loc] = int(random(0, height));
    rockSize[loc] = 30;
  }
  
  // Initializes Bullets
  for (int b = 0; b < bulletsX.length; b++) {
    bulletsX[b] = int(random(mouseX, width));
    bulletsY[b] = int(random(mouseY, height));
  }
}

void draw() {
  background(0);
  // Menus
  gameMenuStart();
  outOfOxyMenu();
  outOfHealth();
  winnerMenu();
  
  if (gameStart == true) {
  println(timeStart);
  timeStart -= rate;
  backgroundStars();
  /* User Defined Functions (2/2) */
  astronaut();
  asteroids();
  /* User Defined Functions (2/2) */
  flag();
  base();
  capture();
  score();
  life();
  mana();
  ability();
  time();
  } 
  
  // Restarts game if you ran out of Oxygen
  if (outOfOxyMenu == true) {
    if(mousePressed) {
      outOfOxyMenu = false;
      gameStart = true;
      key /= ' '; // Stops abiliy from automatically turning on
      captured = false;
      timeAbility = 60;
      timeStart = 100;
      health = 300;
      mana = 300;
      flagX = random(800, 900);
      flagY = random(300, 800);
    }
  }
  
  // Restarts game if you have 0 health
  if (outOfHealthMenu == true) {
    if(mousePressed) {
      outOfHealthMenu = false;
      gameStart = true;
      captured = false;
      key /= ' '; 
      timeAbility = 60;
      timeStart = 100;
      health = 300;
      mana = 300;
      flagX = random(800, 900);
      flagY = random(300, 800);
    }
   }
  
  // Restarts game if you won
  if (win == true) {
    if (mousePressed) {
      win = false;
      gameStart = true;
      captured = false;
      key /= ' ';
      timeAbility = 60;
      timeStart = 100;
      health = 300;
      mana = 300;
      flagX = random(800, 900);
      flagY = random(300, 800);
    }
  }
}
