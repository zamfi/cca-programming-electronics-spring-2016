### Homework 7 (due Sunday, March 13, 2016)

This assignment consists of an Arduino lab, tutorial, and a programming practice assignment, all due Sunday.

#### Arduino Lab

- **Assignment:** Complete the [Exploring Signals lab](http://workshopweekend.net/arduino/labs/exploring-signals). There are two parts; complete each part on "half" of your breadboard. The images all show a half size breadboard -- your breadboard is full size: two half size breadboards stuck together! No need to do the challenges, but you are free to if you like.
  
  You'll need extra parts for this lab: LEDs, wires, two light-dependent resistors (LDR), and two 10K resistors, all of which you can get from the Hybrid Lab. (If you can, do this assignment at the Hybrid Lab!)
  
  **Upload your final code to [a GitHub repository called `week7`](../github-guide.md) and email a link to [jzamfirescupereira@cca.edu](mailto:jzamfirescupereira@cca.edu). Bring your breadboard with your completed project to Wednesday's class.**

- **Assignment:** Read [this tutorial about Ohm's Law](http://www.physicsclassroom.com/class/circuits/Lesson-3/Ohm-s-Law) and answer the following questions in your `week7` github repository's `README.md` file.
  
  Consider the circuit below.
    
  ![two resistors in series](img/two-series-resistors-2.png)
  
  The two resistors are said to be connected "in series". That means that any charge particles flowing through the circuit first pass through one resistor (*R<sub>A</sub>*), and then the other resistor (*R<sub>B</sub>*).
  
  Because all charge particles in a series circuit flow through both resistors, we know the current must be the same in both resistors. We also can deduce that the charge particles lose all their voltage going through the two resistors, and so they must lose some amount of voltage in *R<sub>A</sub>* -- call that amount *V<sub>A</sub>* -- and some amount in *R<sub>B</sub>* -- call that amount *V<sub>B</sub>*. In a series circuit, the voltages add together, so *V<sub>A</sub> + V<sub>B</sub> = 5V*. This means that the resistances add together too, and the **equivalent resistance** for the circuit is *R<sub>A</sub> + R<sub>B</sub>*.
  
  This makes is easy to calculate the total current, *I = 5V / (R<sub>A</sub> + R<sub>B</sub>)*

  **Question 1: Assume *R<sub>A</sub>* and *R<sub>B</sub>* are each equal to *10000 Ω*. What are the total resistance and total current in the circuit?**
  
  **Question 2: Assume *R<sub>A</sub> = 10000 Ω* and *R<sub>B</sub> = 5000 Ω*. What are the total resistance and total current in the circuit?**

  For each resistor, *V = I ⨉ R*. So *V<sub>A</sub> = I ⨉ R<sub>A</sub>* and *V<sub>B</sub> = I ⨉ R<sub>B</sub>*.
  
  **Question 3: Assume *R<sub>A</sub> = 10000 Ω* and *R<sub>B</sub> = 5000 Ω*. How much voltage is lost through resistor *R<sub>A</sub>*? And *R<sub>B</sub>*?**
  
  *Note:* If you need to review your algebra, I recommend the [Khan Academy tutorials on the topic](https://www.khanacademy.org/math/algebra)!


#### Programming Practice

- Let a thousand colors bloom!
  
  Modify the [thousand-bouncing-circles code](thousands.pde) we wrote in class to make each circle its own color. You may need to add a new variable to the `Ball` class.
  
  **Bonus points**: modify the display() function to draw something other than a circle: a flower, perhaps?
  
  **Assignment:** Upload your code to your `week7` repository and email me the link.