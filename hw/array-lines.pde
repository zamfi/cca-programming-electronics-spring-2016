float[] columns = new float[100];

void setup() {
  size(1000, 200);

  for (int i = 0; i < columns.length; i = i+1) {
    columns[i] = random(0, height);
  }
  smooth();
  frameRate(60);
}

void draw() {
  background(255);
  noStroke();
  fill(0);

  for (int i = 0; i < columns.length; i = i+1) {
    ellipse(i*10, columns[i], 5, 5);
    if (mousePressed) {
      if (mouseX > i*10-5 && mouseX < i*10+5) {
        columns[i] = mouseY;
      } 
    }
  }
}