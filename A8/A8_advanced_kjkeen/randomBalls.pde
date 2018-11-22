void randomBalls() {
  
  for (int loc = 0; loc < 20; loc++) {
    fill(randomBallsC[loc], 100, 100);
    ellipse(randomBallsX[loc], randomBallsY[loc], randomBallsSize[loc], randomBallsSize[loc]);
    fill(0);
    textAlign(CENTER);
    textSize(randomBallsSize[loc] / 3);
    text(numberOnBalls[loc], randomBallsX[loc], randomBallsY[loc]);
     
     // Hittest for ball
     if (mainBallX >= randomBallsX[loc] - randomBallsSize[loc]/2 && mainBallX <= randomBallsX[loc] + randomBallsSize[loc]/2
    && mainBallY >= randomBallsY[loc] - randomBallsSize[loc]/2 && mainBallY <= randomBallsY[loc] + randomBallsSize[loc]/2) {
     
      println(randomBallsSize[loc]);
      isBallHit[loc] = true;
      scorePoints += numberOnBalls[loc]; // Updates Current Points
      scoreCount ++; // Shows how many balls are hit currently
      
      if (isBallHit[loc] == true) {
      randomBallsX[loc] = 900; // Ball disappers
      }
    }
    
    if (scoreCount >= 3) {
      start = false; // Ends Game
    } 
    
    numberOnBalls[4] = 1000; // This makes one ball always 1000
    randomBallsSize[4] = 100; // Circle with 1000 be the biggest size
  }
}
