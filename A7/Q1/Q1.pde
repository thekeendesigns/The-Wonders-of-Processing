// Kevin Keen
// 20720531

void setup() {
  size(480, 500);
  secondsBeforeMidnight(); // Displays the current seconds BEFORE midnight
}

void draw() {
  
  background(255);
 
  myHour();
  myMinute();
  mySecond();
  
  // Displays seconds since midnight
  text("Seconds Since Midnight:   " + secondsSinceMidnight(), 20, 450);
}

void myHour() {
  
  int currentHour = hour();
  for (int hourX = 10; hourX < width; hourX += 20) {
    
    if (hourX / 20 < hour()) { // Colors circles less than current hour
      fill(0);
    } else {
      fill(255);
    }
    ellipse(hourX, 40, 20, 20);
  }
  fill(0);
  text("Current Hour:   " + currentHour, 20, 20); // Displays Hours
}

void myMinute() {
  
  int currentMinute = minute();
  int v = 0; // Increments each circle by 1 from left to right
  
  for (int minuteY = 120; minuteY < 192; minuteY += 24) {
    for (int minuteX = 12; minuteX < width; minuteX += 24) {
      
      v++; // Increments each circle by 1 from left to right
      if (v <= minute()) { //<>//
        fill(0); //<>//
      } else {
        fill(255);
      }
      ellipse(minuteX, minuteY, 24, 24);
    }
  }
  fill(0);
  text("Current Minute:   " + currentMinute, 20, 100); // Displays Minutes
}

void mySecond() {
  
  int currentSecond = second(); 
  int t = 0;
  
  for (int secondY = 320; secondY < 392; secondY += 24) {
    for (int secondX = 12; secondX < width; secondX += 24) {
      
      t++; // Increments each circle by 1 from left to right
      if (t <= second()) {
        fill(0);
      } else {
        fill(255);
      }
      ellipse(secondX, secondY, 24, 24);
    }
  }
  fill(0);
  text("Current Second:   " + currentSecond, 20, 300); // Displays Seconds
}

// This function returns the seconds since Midnight
int secondsSinceMidnight() {
  
  int totalSeconds = 0;
  
  totalSeconds = hour() * 3600 + minute() * 60 + second();
  
  return totalSeconds;
}

// This function prints the seconds BEFORE midnight
void secondsBeforeMidnight() {
  
  int secondsBeforeMidnight = 0;
  
  // Returns the value secondsBeforeMidnight
  secondsBeforeMidnight = ((60-second()) + ((60-1-minute())*60) + (24-1-hour())*3600);
  println(secondsBeforeMidnight);
}
