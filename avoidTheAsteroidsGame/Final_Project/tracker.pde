float timeStart = 100;
float rate = .0500;
int health = 300;
int mana = 300;
int noManaFill = color(56,133,217);

void time() { // Keeps track of time since start of game, also your oxygen supply
  textAlign(LEFT);
  textSize(18);
  fill(#5FE0D4);
  text("Oxygen Left", 700, 20);
  rect(700, 30, timeStart*2, 15);
  timeStart -= rate;
  if (timeStart <= 0) {
    outOfOxyMenu = true;
  }
}

void score() { // Background for tracking bar
  fill(#161616, 170);
  rect(0, 0, width, 50);
}

void life() { // Keeps track of lifepoints
  fill(#BB003E);
  text("Health", 40, 20);
  rect(40, 30, health, 15);
  
  if (health <= 0) {
    outOfHealthMenu = true;
  }
}

void mana() { // Keeps track of manapoints
  fill(#3885D9);
  text("Mana", 370, 20);
  rect(370, 30, mana, 15);
  
  if (mana <= 0) {
    textSize(15);
    fill(noManaFill);
    textAlign(LEFT);
    text("You have no MANA", 370, 40);
  }
}
