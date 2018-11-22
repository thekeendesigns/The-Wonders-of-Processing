void mainBall() {
  fill(360);
  ellipse(mainBallX, mainBallY, mainBallSize, mainBallSize);
  mainBallX = mainBallX + mainBallSpeed; // Speed of Ball
  
  if (mainBallX > width) {
  mainBallSpeed = -1; // Moves ball left
  }
  
  if (mainBallX < 0) {
  mainBallSpeed = 1; // Moves ball right
  }
}
