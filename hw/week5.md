### Homework 5 (due Friday, February 26, 2016)

This homework involves two programming assignments, due Friday, and a required tutorial with questions due before class next Monday.

#### Programming

1.  **Assignment**: Continue working on the Flappy Bird project you began in class, working down the list of improvements from [the in-class assignment](../README.md). Feel free to work with other people, but [create your own repository called `week5` in GitHub](../github-guide.md), upload your code to a file called `flappy.pde`, and **include a commend at the top with the names of your collaborators**!

2.  **Assignment**: Snake! In the theme of simple games, I've implemented a limited version of [snake](snake.pde) for you:

    ```processing
    final int maxSegments = 100;
    int[] xSegments = new int[maxSegments];
    int[] ySegments = new int[maxSegments];

    final int gridSize = 20;

    void setup() {
      size(500, 500);
      for (int i = 0; i < maxSegments; i += 1) {
        xSegments[i] = ySegments[i] = -1;
      }
      xSegments[0] = width/2 / gridSize;
      ySegments[0] = width/2 / gridSize;
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
        lastMove = millis();
        int nextX = xSegments[0] + xSpeed;
        int nextY = ySegments[0] + ySpeed;

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
    ```
    
    It's a lot of code, but it's generally simpler than the Flappy Bird code. Make sure you understand it! Look at the reference pages for any functions you don't understand.
    
    Make the following changes:
    
    1. Border detection! Hitting the edge of the canvas should reset.
    2. Add a second food item visible (perhaps green?) at the same time, and let the snake collect them in any order.
    3. Speed the game up every time the snake gets food.
    4. Add your own new gameplay element!

#### Objects Tutorial

1. **Assignment: Follow the [Processing Objects tutorial](https://processing.org/tutorials/objects).**

2. **Assignment: Email me answers to the following questions to [jzamfirescupereira@cca.edu](mailto:jzamfirescupereira@cca.edu) by Sunday night:** Send 3-4 sentences per question!

   1. In what ways is a class like a cookie cutter?
  
   2. What sets apart instance variables from regular variables?
  
   3. In the following code, how many instances of Ball are created in total?

      ```Processing
      class Ball {
        float x, y;
   
        Ball(float x, float y) {
          this.x = x;
          this.y = y;
        }
   
        void display() {
          ellipse(x, y, 50, 50);
        }
      }
   
   
      Ball b = new Ball(100, 100);
      Ball b2;
   
      void setup() {
        size(500, 500);
        b = new Ball(120, 200);
        b2 = new Ball(35, 35);
        noStroke();
      }
   
      void draw() {
        background(255);
        fill(128, 178, 255);
        b.display();
        b2.display();
      }
      ```  