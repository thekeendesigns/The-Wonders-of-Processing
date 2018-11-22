// Kevin Keen
// 20720531

// Completed 100%
// Added: a randomizer on the size of balls
// Added: The ball with 1000 will always be the biggest

float[] randomBallsX = new float[20];
float[] randomBallsY = new float[20];
float[] randomBallsC = new float[20];
int[] numberOnBalls = new int[20];
int[] randomBallsSize = new int[20];

boolean[] isBallHit = new boolean[20];

int mainBallX = int(random(10, 690));
int mainBallY = int(random(10, 525));
int mainBallSize = 15;
int mainBallSpeed = 1;

int scorePointsHighest = 0;
int scorePoints = 0;
int scoreCount = 0;
int lessSeconds = 100;
int startTime, runTime;

boolean start = true;

void setup() {
  size(700 , 700);
  colorMode(HSB, 360, 100, 100, 100);
  
  // Intializes balls
  for (int loc = 0; loc < 20; loc++) {
    
    randomBallsX[loc] = random(0,690);
    randomBallsY[loc] = random(0,490);
    randomBallsC[loc] = random(0, 360);
    randomBallsSize[loc] = int(random(20, 60));
    numberOnBalls[loc] = int(random(1, 100));
  } 
  startTime = millis();
}

void draw() {
  
  if (start == true) {
  background(360); // White background
  randomBalls();
  scorewording();
  mainBall();
  fill(0);
  }
  
}
 //<>//
void mousePressed() {
  
  if (mouseY > mainBallY ) { // Moves main ball up
    mainBallY += 10; 
  }
 
  if (mouseY < mainBallY) { // Moves main ball down
    mainBallY -= 10;
  }
  
  if (mainBallY > 520) { // Stops main ball from going past border
    mainBallY -= 40;
  }
}

void keyPressed() {
  
  if (start == false) {

    // Resets Game
    start = true;
    scoreCount = 0;
    scorePoints = 0;
    startTime = millis();
    mainBallX = int(random(10, 690));
    mainBallY = int(random(10, 525));

    setup();
    for (int loc = 0; loc < 20; loc++) {
      if (isBallHit[loc] == true) {
        randomBallsX[loc] = random(0,690); // Makes randomballs reset
      }
    }
   
    if (runTime/1000 < lessSeconds) { // If first run is less than 100, change time to the normal start progression
       lessSeconds = startTime/1000; 
       if (runTime/1000 < lessSeconds) { // If the next run(s) score below the current best time, make the current time the new time
         lessSeconds = runTime/1000;
       }
     }   
  }   
}
