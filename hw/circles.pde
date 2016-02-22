final int GRID_SIZE = 10;
final float GRID_PADDING = 50;

void setup() {
  size(500, 500);
  mouseX = mouseY = 250;
}

float gridToCoordinates(int input) {
  return GRID_PADDING+input*(500 - 2*GRID_PADDING)/(GRID_SIZE-1);
}

void draw() {
  background(0);

  noStroke();
  fill(255);
  for (int i = 0; i < GRID_SIZE; ++i) {
    for (int j = 0; j < GRID_SIZE; ++j) {
      float distance = sqrt(sq(mouseX-gridToCoordinates(i)) + sq(mouseY-gridToCoordinates(j)));
      float ellipseSize = min(100, 1000.0/distance);
      ellipse(gridToCoordinates(i), gridToCoordinates(j), ellipseSize, ellipseSize);
    }
  }
}