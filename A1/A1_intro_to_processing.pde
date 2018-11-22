// Kevin Keen
// 20720531

//It's IRON MAN-ish?

// Graph Size
size(500, 500);

// Background Face Circle
ellipse(250, 250, 400, 420);

// Forehead
quad(187.5, 100, 220, 190, 250, 190, 250, 100); 
quad(160, 62.5, 187.5, 100, 250, 100, 230, 62.5);
quad(312.5, 100, 280, 190, 250, 190, 250, 100); 
quad(270, 62.5, 250, 100, 312.5, 100, 339, 62.5);

// Face Connections
line(51, 275, 100, 220);
line(100, 220, 100, 155);
line(100, 155, 125, 220);
line(449, 275, 400, 220);
line(400, 220, 400, 155);
line(400, 155, 375, 220);

// Eyes
rect(125, 220, 93.75, 35, 0, 60, 15, 10);
rect(282, 220, 93.75, 35, 60, 0, 15, 10);

// Details in Eye
ellipse(330, 237, 20, 20);
ellipse(170, 237, 20, 20);

// Chin Design
line(51, 275, 160, 350);
line(449, 275, 340, 350);
quad(160, 350, 160, 400, 195, 430, 195, 380);
quad(340, 350, 340, 400, 305, 430, 305, 380);
line(195, 430, 305, 430);
line(195, 380, 305, 380);
triangle(250, 460, 195, 430, 305, 430);
line(120, 375, 145, 375);
line(380, 375, 355, 375);
strokeWeight(7);
point(145, 375);
point(355, 375);

// Mouth
strokeWeight(1);
line(195, 390, 305, 390);
line(195, 400, 305, 400);
line(195, 410, 305, 410);
line(195, 420, 305, 420);

// Cyborg Dots with Line Details
line(160, 135, 160, 180);
line(145, 160, 145, 190);
line(175, 160, 175, 195);
line(170, 290, 170, 315);
line(185, 315, 185, 270);
line(200, 290, 200, 315);
line(325, 290, 325, 340);
line(355, 290, 355, 320);
strokeWeight(10);
point(160, 135);
point(175, 160);
point(145, 160);
point(325, 290);
point(355, 290);
point(170, 290);
point(200, 290);
point(185, 315);

// Cyborg Lines
strokeWeight(1);
line(355, 140, 325, 150);
line(355, 150, 325, 160); 
line(355, 160, 325, 170);

// Background Design
ellipse(500, 500, 70, 70);
ellipse(500, 370, 56, 56);
ellipse(500, 250, 35, 35);
ellipse(500, 120, 21, 21);
ellipse(500, 0, 10, 10);
ellipse(0, 0, 70, 70);
ellipse(0, 120, 56, 56);
ellipse(0, 250, 35, 35);
ellipse(0, 370, 21, 21);
ellipse(0, 500, 10, 10);

// Antenna
line(250, 20, 250, 40);
line(250, 20, 260, 15);
strokeWeight(6);
point(260, 15);
