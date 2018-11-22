// A2 Starter Code

// setup
// don't change anything from HERE ...
size(160, 720);
int scale = 10;
PGraphics h = createGraphics(width * scale, height * scale, JAVA2D);
beginRecord(h);
h.scale(scale); 
background(0);
// ... to HERE

// VERY IMPORTANT: put *your* uwaterloo username inside the quotes
String uwid = "kjkeen";

// now write code to draw your body ...

// Color Sets
// #3CA3E2 Main Blue
// #3C70DD Blue For Arms
// #262439 Gray 
// #050810 Dark Gray 
// #FFCF2A Base Yellow
// #050810 Dark Black
// #93cdf0 Light Blue

// Body Frame
noStroke();
fill(#3CA3E2);
triangle(80, 600, 15, 130, 145, 130);
fill(#93cdf0);
triangle(80, 600, 40, 130, 120, 130);

// Top Section
// Neck
fill(#050810);
triangle(80, 165, 30, 130, 130, 130);

// Head
noStroke();
fill(#262439);
triangle(80, 90, 40, 130, 80, 150);
triangle(80, 90, 120, 130, 80, 150);
fill(60, 163, 226, 127);
triangle(65, 110, 50, 127, 79, 124);
triangle(95, 110, 110, 127, 81, 124);
fill(#3CA3E2);
triangle(65, 115, 55, 125, 75, 123);
triangle(95, 115, 105, 125, 85, 123);

// Pendant
fill(#FFCF2A);
triangle(80, 180, 60, 195, 100, 195);
quad(60, 195, 67, 213, 93, 213, 100, 195);
stroke(#B08E24);
strokeWeight(4);
line(80, 193, 85, 198);
line(80, 193, 74, 204);
line(74, 204, 94, 204);
line(94, 204, 100, 197);
line(100, 197, 80, 180);
line(80, 180, 61, 195);
line(61, 195, 67, 211);
line(67, 211, 93, 211);

// Chains
noFill();
stroke(#050810);
strokeWeight(4);
strokeCap(ROUND);
bezier(15, 130, 20, 180, 70, 140, 60, 195);
bezier(15, 130, 60, 130, 20, 180, 60, 195);
bezier(145, 130, 140, 180, 90, 140, 100, 195);
bezier(145, 130, 90, 140, 140, 170, 100, 195);

// Middle Section

// Arms
noStroke();
fill(#3C70DD);
triangle(142, 150, 123, 280, 150, 375);
triangle(18, 150, 37, 280, 10, 375);

// Armor
fill(#262439);
noStroke();
quad(45, 450, 64, 400, 60, 350, 42, 405);
quad(96, 400, 115, 450, 118, 405, 100, 350);
triangle(38, 405, 43, 425, 45, 395);
triangle(122, 405, 117, 425, 115, 395);
triangle(78, 550, 65, 550, 80, 600);
triangle(82, 550, 95, 550, 80, 600);
rect(70, 275, 5, 5);
quad(85, 265, 90, 270, 95, 265, 90, 260);
rect(50, 255, 5, 5);
quad(67, 257, 72, 262, 77, 257, 72, 252);
quad(25, 260, 35, 270, 45, 260, 35, 250);
rect(50, 270, 10, 10);
quad(115, 280, 125, 290, 135, 280, 125, 270);
quad(95, 280, 100, 285, 105, 280, 100, 275);
rect(105, 255, 8, 8);
quad(25, 320, 25, 345, 70, 325, 70, 300); 
quad(135, 320, 135, 345, 90, 325, 90, 300); 
triangle(25, 345, 25, 360, 50, 330);
triangle(135, 345, 135, 360, 110, 330);

// Middle Plate
triangle(80, 420, 70, 340, 90, 340);

// Bottom Section
noFill();
stroke(36, 91, 205, 150);
strokeWeight(2);
bezier(59, 462, 40, 473, 120, 473, 100, 462);
bezier(63, 490, 40, 500, 120, 500, 95, 490);
bezier(67, 510, 40, 520, 120, 520, 91, 510);
bezier(69, 530, 50, 540, 110, 540, 89, 530);

// draw these mandatory joining sections LAST:
// You can change the colour for these sections,
// but don't change their width or position!
noStroke();
rectMode(CORNER);
//   neck section
fill(#93cdf0); // Main Blue
rect(50, 235, 60, 10);
//   waist section
fill(#262439); // Gray
rect(20, 475, 120, 10);

// code to save sections
// (make sure this is the very last code in your sketch)
// don't change anything from HERE ...
h.get(0, 0, 160 * scale, 240 * scale).save("top_" + uwid + ".png");
h.get(0, 240 * scale, 160 * scale, 240 * scale).save("middle_" + uwid + ".png");
h.get(0, 480 * scale, 160 * scale, 240 * scale).save("bottom_" + uwid + ".png");
// ... to HERE
