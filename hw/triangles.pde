int x1 = 10;
int x2 = 0;
int x3 = 20;
int y1 = 0;
int y2 = 20;
int y3 = 20;

void setup() {
  size(200,200);
  noStroke();
  background(255);
}

void draw() {
  background(255);
  
  fill(0,240,255);
  beginShape();
  vertex(x1,y1);
  vertex(x2,y2);
  vertex(x3,y3);
  endShape(CLOSE);
  
  fill(20,220,255);
  beginShape();
  vertex(x1+20,y1+20);
  vertex(x2+20,y2+20);
  vertex(x3+20,y3+20);
  endShape(CLOSE);
  
  fill(40,200,255);
  beginShape();
  vertex(x1+40,y1+40);
  vertex(x2+40,y2+40);
  vertex(x3+40,y3+40);
  endShape(CLOSE);
  
  fill(60,180,255);
  beginShape();
  vertex(x1+60,y1+60);
  vertex(x2+60,y2+60);
  vertex(x3+60,y3+60);
  endShape(CLOSE);
  
  fill(80,160,255);
  beginShape();
  vertex(x1+80,y1+80);
  vertex(x2+80,y2+80);
  vertex(x3+80,y3+80);
  endShape(CLOSE);

  fill(90,140,255);
  beginShape();
  vertex(x1+100,y1+100);
  vertex(x2+100,y2+100);
  vertex(x3+100,y3+100);
  endShape(CLOSE);
  
  fill(120,120,255);
  beginShape();
  vertex(x1+120,y1+120);
  vertex(x2+120,y2+120);
  vertex(x3+120,y3+120);
  endShape(CLOSE);
  
  fill(140,100,255);
  beginShape();
  vertex(x1+140,y1+140);
  vertex(x2+140,y2+140);
  vertex(x3+140,y3+140);
  endShape(CLOSE);
  
  fill(180,60,255);
  beginShape();
  vertex(x1+160,y1+160);
  vertex(x2+160,y2+160);
  vertex(x3+160,y3+160);
  endShape(CLOSE);
  beginShape();
  
  fill(200,40,255);
  beginShape();
  vertex(x1+180,y1+180);
  vertex(x2+180,y2+180);
  vertex(x3+180,y3+180);
  endShape(CLOSE);
}