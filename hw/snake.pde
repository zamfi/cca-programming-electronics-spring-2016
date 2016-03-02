// divide the canvas into a grid for the snake segments.
// each grid square is 20 pixels wide and tall
final int gridSize = 20;

final int maxSegments = 100;

// the xSegments and ySegments arrays hold the (x,y) grid positions
// of the segments of the snake
int[] xSegments = new int[maxSegments];
int[] ySegments = new int[maxSegments];


void setup() {
  size(500, 500);
  for (int i = 0; i < maxSegments; i += 1) {
    // fills both arrays with "-1" signifying "no segment"
    xSegments[i] = ySegments[i] = -1;
  }
  // first segment starts at the middle of the canvas
  // width/gridSize is the number of grid squares wide the canvas is
  xSegments[0] = width/gridSize / 2;
  // height/gridSize is the number of grid squares tall the canvas is
  ySegments[0] = height/gridsize / 2;

  snakeLength = 1;
  foodX = 10;
  foodY = 20;

  ellipseMode(CORNER);
}

int lastMove = 0;
int timeBetweenMoves = 500;

int xSpeed = 1;
int ySpeed = 0;
int snakeLength;

int foodX;
int foodY;

void draw() {
  background(255);
  noStroke();
  
  fill(0);
  for (int i = 0; i < maxSegments; i += 1) {
    rect(xSegments[i]*gridSize, ySegments[i]*gridSize, gridSize, gridSize);
  }

  fill(255, 0, 0);
  ellipse(foodX * gridSize, foodY * gridSize, gridSize, gridSize);

  if (millis() - lastMove > timeBetweenMoves) {
    // this code runs (approximately) every 500 milliseconds,
    // whatever the value of timeBetweenMoves is
    lastMove = millis();
    
    // possible next position for the head segment of the snake
    int nextX = xSegments[0] + xSpeed;
    int nextY = ySegments[0] + ySpeed;

    // move over all the other positions
    for (int i = snakeLength-1; i > 0; i -= 1) {
      xSegments[i] = xSegments[i-1];
      ySegments[i] = ySegments[i-1];
    }
    
    if (isThereASegmentAtPosition(nextX, nextY)) {
      // snake hit itself! reset the game!
      setup();
    } else {
      xSegments[0] = nextX;
      ySegments[0] = nextY;
      if (nextX == foodX && nextY == foodY) {
        getFood();
      }
    }
  }
}

void getFood() {
  snakeLength += 1;
  
  while (isThereASegmentAtPosition(foodX, foodY)) {
    foodX = floor(random(width/gridSize));
    foodY = floor(random(width/gridSize));
  } 
}

boolean isThereASegmentAtPosition(int x, int y) {
  for (int i = 0; i < snakeLength; i += 1) {
    if (xSegments[i] == x && ySegments[i] == y) {
      return true;
    }
  }
  return false;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      ySpeed = -1;
      xSpeed = 0;
    }
    if (keyCode == DOWN) {
      ySpeed = 1;
      xSpeed = 0;
    }
    if (keyCode == RIGHT) {
      ySpeed = 0;
      xSpeed = 1;
    }
    if (keyCode == LEFT) {
      ySpeed = 0;
      xSpeed = -1;
    }
  }
}
