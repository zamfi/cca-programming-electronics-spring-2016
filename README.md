# CCA Programming & Electronics, Spring  2016

This course repository contains homework assignments, useful guides, and code for "Programming & Electronics" at CCA, Spring 2016.

Also included in this repository is the official [course syllabus](syllabus.pdf).

### Week 1: Monday, January 25, 2016

Lecture:
- Inspirational Videos
- Introductions
- What is programming?
- Goals & course details

Hands-on activities:
- Human Embodiment of Programmer & Robot
  - Programs generally run line-by-line.
  - While loops, if statements, and functions break that up.

Videos:
- Basic robots
  - [Coffee-can robot](http://www.youtube.com/watch?v=b0mIshBIbvI#t=24)
  - [Tree-climbing robot](http://www.youtube.com/watch?v=zkpH1BjD6Wc)
  - [Self-balancing robot](http://www.youtube.com/watch?v=Tw9Jr-SPL0Y)
  - [Insect robot](http://www.youtube.com/watch?v=tOsNXg2vAd4#t=120)
  - [Treadbot](http://www.youtube.com/watch?v=YblSltHDbIU)
  - [Velociraptor robot](http://www.youtube.com/watch?v=lPEg83vF_Tw)
- Installations
  - [The Bay Lights](http://thebaylights.org/)
  - [Murmur Wall](http://www.future-cities-lab.net/projects/#/murmurwall/)
  - [Floating Couch](http://vimeo.com/72826106)
  - [Wooden Segment Mirror](https://www.youtube.com/watch?v=BZysu9QcceM#t=36)
  - [Generative design](https://www.youtube.com/watch?v=pNkz8wEJljc)
- Art & Music bots
  - [Textile weaving](https://vimeo.com/71044541)
  - [ReacTable](https://www.youtube.com/user/marcosalonso)
  - [Projection mapping](https://www.youtube.com/watch?v=czuhNcNU6qU)
  - [Laser harp](http://www.youtube.com/watch?v=sLVXmsbVwUs#t=20)
  - [Cubli: Floating Cube](https://www.youtube.com/watch?v=n_6p-1J551Y)
  - [Arc-o-matic](http://vimeo.com/57082262#at=130)
  - [Robo Faber](http://vimeo.com/78771257)
  - [Eggbot](https://www.youtube.com/watch?v=w4cdbV2oaEc)
- Drink-makers
  - [Textspresso](http://www.youtube.com/watch?v=kx9D74t7GD8#t=89)
  - [The Inebriator](http://www.youtube.com/watch?v=WqY7fchs7H0)
- Computer Numerical Control (CNC)
  - [Shapoko / tinyg](http://www.youtube.com/watch?v=pCC1GXnYfFI#t=11)
  - [Makerbot Replicator](http://www.youtube.com/watch?v=NAbiAzYhTOQ)
- Vacuuming
  - [Roomba](https://www.youtube.com/watch?v=0DNkbZvVYvc)

[Homework for Week 1](hw/week1.md)

### Week 2: Monday, February 1, 2016

Lecture:
- Homework Review

Lab:
#### Sketching with Processing

1.  Rewrite the following code without using a loop:

    ```processing
    size(200, 200);
    background(255);

    int i = 0;
    while (i < 7) {
      line(10+i*30, 10, 10+i*30, height-10);
      i = i + 1;
    }
    ```

2.  Rewrite the following code using a `while` or `for` loop:

    ```processing
    size(200, 200);
    background(255);

    line(10, 10, 20, 10);
    line(20, 20, 30, 20);
    line(30, 30, 40, 30);
    line(40, 40, 50, 40);
    line(50, 50, 60, 50);
    line(60, 60, 70, 60);
    line(70, 70, 80, 70);
    line(80, 80, 90, 80);
    line(90, 90, 100, 90);
    line(100, 100, 110, 100);
    line(110, 110, 120, 110);
    line(120, 120, 130, 120);
    line(130, 130, 140, 130);
    line(140, 140, 150, 140);
    line(150, 150, 160, 150);
    line(160, 160, 170, 160);
    line(170, 170, 180, 170);
    line(180, 180, 190, 180);
    ```

3.  Rewrite the following code without using the `house` function:

    ```processing
    void setup() {
      size(200, 200);
      background(255);
    }

    void house(int x, int y) {
      rect(x, y, 20, 20);
      line(x, y, x+10, y-10);
      line(x+10, y-10, x+20, y);
    }

    void draw() {
      background(255);
      house(mouseX-10, mouseY-10);
    }
    ```

4.  Modify the following code so that clicking clears the screen. One way to do this is to add a `mousePressed` function; the Processing reference on [mousePressed()](https://processing.org/reference/mousePressed_.html) may be useful.

    ```processing
    void setup() {
      size(200, 200);
      background(255);
    }

    void draw() {
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
    ```

#### Recreating Sketches

1. ![one](img/one.png)

2. ![two](img/two.png)

3. ![three](img/three.png)

4. [![four](img/four.png)](http://www.youtube.com/watch?v=jWNXFlGHuPA)

5. ![five](img/five.png)

6. Look through the [Processing reference](http://processing.org/reference). Pick a function, and use it in a new sketch of your own choosing.

[Homework for Week 2](hw/week2.md)