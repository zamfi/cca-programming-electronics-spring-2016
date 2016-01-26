### Homework 1 (due Friday, January, 2015)

- Solve the puzzles up to and including level 8 at [Rudy the Red Dot](http://rudy.zamfi.net). Half of are the puzzles we solved together using "pseudocode" in class, but now you will solve them with actual code, in JavaScript. The other half are similar puzzles, with slightly greater complexity, that we did *not* solve together in class.
  
  *(The website is running on my computer at home, so it may load a bit slowly. Also, if the <strong>Run</strong> button seems to stop working, reload the page. Please use the Chrome browser.)*
  
  - For puzzles that change, each time you hit the **Run** button, you'll get a new version of the puzzle. Your code should solve any variation of the puzzle you can get. Start by clicking **Run** a few times to make sure you remember what the possible variations are.
  - There's a cheat sheet of syntax on the right, under the puzzle itself.
  - **Assignment: Solve the first 8 puzzles; try to include at least 3 functions of your own definition. (They don't all have to be in the same puzzle.)**
  - **Assignment: Use a while loop for puzzles 7 and 8.**
  - **Assignment: Publish your code on the web, and [send me](mailto:jzamfirescupereira@cca.edu) the link. For this class, use [GitHub](../github-guide.md) to publish your work; your solution to *each puzzle should be in its own file*, named `puzzle-#.js`, where `#` is the puzzle number.**
  
  You may find the following **advice** extraordinarily helpful; **I recommend reading it carefully**:
  
  - Programming is the act of recording a process. In our first class, we (you!) executed this recording; in general, however, a computer will execute this process for you. There are two parts to programming: figuring out the process, and coding that process. The act of figuring out the process is the act of combining the primitive components of the environment into the behavior you want. For today's puzzles, that means combining the **vocabulary** of function calls: `up`, `down`, `left`, `right`, `getColor`, `setColor` together with the **grammar** of syntax: variables, `while` loops, `if` statements, blocks, and `function` definitions. You can extend the **vocabulary** by defining your own functions; the **grammar** is fixed by the language.

  - We cheated in class today; we used just the command name itself in our code to tell the Rudy to run the command — but in reality the name itself just *refers* to the command, it doesn't make the computer *execute* the command. To execute a command, we need parentheses after the command name, like so: `down();`. The parentheses tell Rudy to execute the command with no parameters (*aka* arguments). Every command execution also needs to end with a semicolon: (`;`) except for blocks as used in if statements, functions, and while loops. (For command executions within those blocks, yes, semicolons are required.) Another cheat: in class we created new variables just by assigning them; for Rudy, when using a name or variable for the first time, indicate that it's a variable using `var` -- see the sidebar for details.

  - Remember that code gets run line by line, using the "program counter". As each line is executed, Rudy performs that action. In the Rudy programming environment, lines are highlighted in red as they are executed. *You can speed up execution by lowering the "Evaluation step delay" at the top of the page with the little arrows next to the number.*

  - The movement functions, `up`, `down`, `left`, `right`, cause Rudy to move; the `getColor` function *returns*, that is, when executed, a call to `getColor` *turns into* the color of the current square. The `setColor` function changes the color of the current square to be whatever the command's *parameter (aka argument)* is.

  - Creating and using your own functions has two parts: (1) `defining` a function, that is, telling Rudy `how` to perform a new command, and (2) actually `executing` the function.

  - There is a distinction between "=", which creates or updates a value stored in memory, and "==", which compares two values for mathematical equality. Many bugs come of this. Squash them quickly by remembering this distinction!

  - Remember how gates work: if the colors on either side of the gate match, then the gate will be open.

  - Remember how if statements and while loops work: for if statements, the condition is checked once, and the resulting block is run at most once; for while loops, the condition is checked repeatedly, once at the very beginning, then again after each run through the loop.
  
  If you get stuck, consult the sidebar beneath the puzzle display! If you get an error, Google it! Still stuck? Email [me](mailto:jzamfirescupereira@cca.edu) or [Leah](mailto:lmeyerholtz@cca.edu) for help!

- If you find yourself struggling with the basic concepts of the code, complete through puzzle 20 at [Hour of Code](http://learn.code.org/hoc/1) -- make sure you click the **Show Code** button after solving each puzzle and that you understand how that code works.

- **Assignment: Install [Processing](https://processing.org/download/?processing) on your computer.**

- **Assignment: Follow the first [Processing tutorial](https://processing.org/tutorials/)** by Daniel Shiffman, called "Hello Processing"

- **Assignment: Get extra help by going to the Hybrid Lab during staffed hours (I believe 9am-10pm) and asking the coaches for help!**

- **Assignment: Bring your computer to class on Monday, February 1!**

Please email me at [jzamfirescupereira@cca.edu](mailto: jzamfirescupereira@cca.edu) if you're stuck, aren't sure how to move forward, or just want to say hi! (And if you're stuck on Rudy, include the URL link to the puzzle you're stuck on!)