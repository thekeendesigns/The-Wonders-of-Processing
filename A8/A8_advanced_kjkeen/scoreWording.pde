void scorewording() {
  
  // Black Line Divider
  line(0, 525, width, 525);
  
  // This is just to cover the size of 1000 leaking past margin
  fill(360);
  rect(-10, 525, width + 10, height); 
  
  // Text Display
  textSize(15);
  fill(0);
  
  // How long has timer been running? Current milli - saved milli  
  runTime = millis() - startTime;
  
  // Displays Text
  text("Total Prize:", 100, 550);
  text(scorePoints, 100, 580);
  text("Biggest Win Ever:", 100, 620);
  text(scorePointsHighest, 100, 650);
  text("Time Since Start:", 350, 550);
  text(runTime/1000, 350, 580);
  text("Least Seconds Ever:", 350, 620);
  text(lessSeconds, 350, 650);
  text("Total Balls Hit:", 600, 550);
  text(scoreCount, 600, 580);
  
  // Sets Highest Score
  if (scorePoints > scorePointsHighest) {
      scorePointsHighest = scorePoints;
    }
}
