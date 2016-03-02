### Homework 6 (due Sunday, March 6, 2016)

This homework involves one programming assignment and a required tutorial with questions, both due next Sunday.

#### Programming

In class this week, we began the process of creating a Processing sketch to draw a circle moving on a canvas, and bouncing off the edges of the canvas.

As you may recall, we broke down the sketch into several pieces:

1. Creating the canvas
2. Setting boundaries / the size of the canvas (`size`)
3. Tracking the position (and radius) of the circle (variables `x`, `y`, and `radius`)
4. Tracking the motion of the circle: speed & direction (variables `xSpeed` and `ySpeed`)
5. Bouncing the circle at the boundaries, which consists of.
   1. Detecting when the circle hits the boundaries (using an `if` statement comparing the `x` variable to `0` and the canvas `width`, and analogously for the `y` variable)
   2. Changing the appropriate direction of the circle's motion (by negating the `xSpeed` or `ySpeed` depending on which boundary was hit)

Since we're simulating a physical process here, this little bit of physics knowlege may help:

Position and velocity are two fundamental physical concepts. Position refers to the location of an object, and velocity refers to the rate of change of that position: how fast that object is moving, and in which direction. 

Traditionally, position is descibed as a set of coordinates: *(x, y, z)* for objects in our 3-dimensional space, or (`x`, `y`) for objects on a canvas. The two coordinates `x` and `y` usually describe the *horizontal* and *vertical* displacement of the object from an *origin* point; in Processing, that origin is the top-left corner of the canvas, and positive `x` values all lie to the *right* of the origin, just as positive `y` values lie *below* the origin.

Velocity is *also* described as a pair of numbers, often `vx` and `vy`. These two refer to the rate at which `x` and `y` change. In human terms, we describe velocity (motion) with phrases like "moving due North at 650 miles per hour". In computer terms, we often refer to *pixels per second* or *pixels per frame* to describe velocity. Take an animation running at a framerate of 30 frames per second for an example: if it takes 10 seconds for a circle to travel 300 pixels right across the screen, we can say the circle is travlling at *30 pixels per second* or (conveniently) *1 pixel per frame*. Similarly, a circle moving left at the same speed can be said to be moving *left* at *1 pixel per frame* or *right* at *-1 pixel per frame*, having a negative `vx` (a "negative", or *leftward* speed in the `x` direction).

*Pixels per frame* is a really useful unit of measurement, because it makes the programming math really easy to work out. Let's say, as the sketch breakdown we created in class (and which I've reproduced above) suggests, we use `x` and `y` to refer to the position of the circle, and `xSpeed` and `ySpeed` to refer to the speed of the circle in *pixels per frame*. Then, the "physics" part of the sketch becomes pretty simple: **each frame, the `x` position changes by `xSpeed` and the `y` position changes by `ySpeed`**. 

In other words, in the `draw` function, you should have `x = x + xSpeed; y = y + ySpeed;` -- and that's all it takes. The `xSpeed` variable stores how many pixels the position `x` changes in each frame, so in each frame (that is, each time the draw function is called), the `x` position changes by `xSpeed` pixels: `x = x + xSpeed`. Similar for `y`.

I'll leave you with a question: can you figure out what change to make to `xSpeed` in order to make the circle bounce (that is, reflect) off a vertical wall? In other words, reflect its `xSpeed`?

For (much, much) more about this kind of physics, check out [chapter 1 of Daniel Shiffman's book *Nature of Code*](http://natureofcode.com/book/chapter-1-vectors/).

**Assignment: Create a new repository in your github account called `week6`, and inside create a filed called `circle.pde` in which you:** 

1. Implement the sketch we laid out in class (and above), that has a circle that bounces around the boundaries of the canvas.
2. Add a second, independent circle to the canvas. This second circle should have its own position (and speed), so new variables are necessary. Each circle may hit the boundaries at different times, so they'll need their own `if` statements too.
3. **Recommended but optional challenge**: Create a class that represents a circle and its motion. Your class should have instance variables that track any data unique to each circle, and should have methods `move()`, `display()`, and `bounce()` that update the circle's position based on its speed, draw the circle to the canvas, and detect boundary collisions and negate the circle's speed variables, respectively. For **extra bonus points**, put 1000 instances of your circle class into a big array!


#### Arduino & Electronics tutorials

We'll start working with electronics this week! 

In preparation, do some research ahead of time on the basic concepts; enough to answer the questions below.

- **Assignment:** [email me](mailto:jzamfirescupereira@cca.edu) ([jzamfirescupereira@cca.edu](mailto:jzamfirescupereira@cca.edu)) answers to the following questions:
  1. Why does lighting an LED require a closed circuit?
  2. Explain, in your own words, what **voltage** and **current** are.
  3. What is the mathematical relationship between voltage, current, and resistance? 
  4. If a simple circuit consisting of a light and a battery has a resistance of 100 Ohms and a battery supply of 24 Volts, how much current will there be?

In answering those questions, you may find the following resources helpful:

- Written tutorials:
  - https://learn.sparkfun.com/tutorials/what-is-electricity
  - https://learn.sparkfun.com/tutorials/voltage-current-resistance-and-ohms-law
  - http://www.allaboutcircuits.com/vol_1/chpt_1/index.html
  - http://www.allaboutcircuits.com/vol_1/chpt_2/index.html 
- Videos:
  - https://www.youtube.com/watch?v=exlRjDKHGRg
  - https://www.youtube.com/watch?v=mzSnz6ZDkFE
  
