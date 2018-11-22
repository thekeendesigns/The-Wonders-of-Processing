// Kevin Keen
// 20720531

void setup() {
  size(400, 400);
}

void draw() {
}

void func1(int numberOfLines, int canvasBorder) {
  
  fill(255);
  rect(0 + canvasBorder, 0 + canvasBorder, 200, 200); // Background
  
  for (int i = 0; i < numberOfLines; i++) {
    // First X and Y Position
    int randomFirstX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomFirstY = int(random(0 + canvasBorder,height - canvasBorder));
    // Second X and Y Position
    int randomSecondX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomSecondY = int(random(0 + canvasBorder,height - canvasBorder));
    //Display Lines
    line(randomFirstX, randomFirstY,randomSecondX, randomSecondY);
  }
}

void func2(int numberOfLines, int canvasBorder) {
  
  fill(255);
  rect(0 + canvasBorder, 0 + canvasBorder, 300, 300); // Background
  
  for (float i = 20; i < numberOfLines; i++) {
    // First X and Y Position
    int randomFirstX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomFirstY = int(random(0 + canvasBorder, height - canvasBorder));
    // Second X and Y Position
    int randomSecondX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomSecondY = int(random(0 + canvasBorder, height - canvasBorder));
    // Third X and Y Position
    int randomConnectX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomConnectY = int(random(0 + canvasBorder, height - canvasBorder));
    // Fourth X and Y Positions
    int randomConnectTwoX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomConnectTwoY = int(random(0 + canvasBorder, height - canvasBorder));
    // Fifth X and Y Positions
    int randomConnectThreeX = int(random(0 + canvasBorder, width - canvasBorder));
    int randomConnectThreeY = int(random(0 + canvasBorder, height - canvasBorder));
    // Display Lines
    line(randomFirstX, randomFirstY, randomConnectX, randomConnectY);
    line(randomConnectX, randomConnectY, randomSecondX, randomSecondY);
    line(randomSecondX, randomSecondY, randomFirstX, randomSecondY);
    line(randomSecondX, randomSecondY, randomConnectTwoX, randomConnectTwoY);
    line(randomConnectTwoX, randomConnectTwoY, randomConnectThreeX, randomConnectThreeY);
  }
}

void func3() {
  
  background(255);
  
  for (int yOne = 10; yOne < height; yOne += 10) { 
    for (int xOne = 10, xTwo = 20; xOne < width; xOne += 20, xTwo += 20) { // Calls both x points and increases by 20 each
      line(xOne, yOne, xTwo, yOne); // Displays lines
    }
  }
}

void func4() {
  
  background(127);  
  int xOne = 190;
  int xTwo = 210;
  int yOne = 190;
  int yTwo = 210;
  int neutral = 200; // X and Y positions that are always 200
  
  //Draws Initial Rectangle
  line(xOne, neutral, neutral, yOne);
  line(neutral, yOne, xTwo, neutral);
  line(xTwo, neutral, neutral, yTwo);
  line(neutral, yTwo, xOne, neutral);
  
  for (int i = 0; i < width; i++) {
    // Increases x and y positions that change
    xOne -= 10;
    yOne -= 10;
    xTwo += 10;
    yTwo += 10;
    
    line(xOne, neutral, neutral, yOne);
    line(neutral, yOne, xTwo, neutral);
    line(xTwo, neutral, neutral, yTwo);
    line(neutral, yTwo, xOne, neutral);
  }
}

void keyPressed() {
  if (key == '1') {
    func1(50, 100);
  } else if (key == '2') {
    func2(25, 50);
  } else if (key == '3') {
    func3();
  } else if (key == '4') {
    func4();
  } else {
    background(127);
  }
}
