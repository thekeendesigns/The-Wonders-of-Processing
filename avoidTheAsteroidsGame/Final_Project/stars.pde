int[] bulletsX = new int[150];
int[] bulletsY = new int[150];

/* FOR LOOP (2/2) */
void backgroundStars() {
  for (int b = 0; b < bulletsX.length; b++) {
    fill(#FFFF00, 50);
    noStroke();
    rect(bulletsX[b], bulletsY[b], 2, 2);
 }
}
/* FOR LOOP (2/2) */
