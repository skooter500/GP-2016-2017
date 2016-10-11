# DT508 Game Programming 2016-2017

Resources
---------
* [Webcourses](http://dit.ie/webcourses) - Course code GAME1003
* [Slack](https://gp-2016-2017.slack.com)
* [Processing](http://processing.org)
* [The Processing language reference](http://processing.org/reference/)
* [Learning Processing: A Beginner's Guide to Programming Images, Animation, and Interaction (Morgan Kaufmann Series in Computer Graphics)](http://http://www.learningprocessing.com/)
* [The Nature of Code](http://natureofcode.com/)
* [The git manual - read the first three chapters](http://git-scm.com/documentation)
* [A video tutorial all about git/github](https://www.youtube.com/watch?v=p_PGUltnB6w)
* [Games Fleadh](http://www.gamesfleadh.ie/)
* [The Imagine Cup](https://www.imaginecup.com/)

## Contact the lecturer

* Email: bryan.duggan@dit.ie
* Twitter: [@skooter500](http://twitter.com/skooter500)
* Slack: [gp-2016-2017.slack.com](https://gp-2016-2017.slack.com)

Some assignments from previous years:

[![YouTube](http://img.youtube.com/vi/4g3qwul2o44/0.jpg)](https://www.youtube.com/watch?v=4g3qwul2o44)

[![YouTube](http://img.youtube.com/vi/ObH8ffqzseU/0.jpg)](https://www.youtube.com/watch?v=ObH8ffqzseU)

[![YouTube](http://img.youtube.com/vi/BH4alGk5-A4/0.jpg)](https://www.youtube.com/watch?v=BH4alGk5-A4)

# Semester 1

# Week 5
- [Lots of loops examples](processing/lotsaloops)
- [The lines program we wrote in the class](processing/starship)
- Video all about loops n stuff from last year:

  [![YouTube](http://img.youtube.com/vi/fcHfysgK9iw/0.jpg)](https://www.youtube.com/watch?v=fcHfysgK9iw)

## Lab
### Learning outcomes
- Practice generating lots of different shapes with loops in processing
- Be creative and make something beautiful in code

Try and write some processing code to draw the following shapes. Use variables and loops in your solutions!

These require ONE loop:

![Sketch](images/p21.png)

This shape draws lines from the sides that all meet in the middle. This can be done using one loop, but is better with two:

![Sketch](images/p19.png)

This sketch always draws 10 equally sized circles across the screen. This should work no matter what you set the screen size to. You should also declare a variable to hold the number of circles to draw so that if you change this number, the sketch should still work:

![Sketch](images/p18.png)

This sketch places circles around the outside of a bigger circle to make a flower pattern. Once you figure this out, you can modify it to do something cool with colours:

![Sketch](images/p20.png)

This sketch prints the numbers of the clock around in a circle:

![Sketch](images/p22.png)

Finally! This sketch requires you to put one loop inside another and also use a boolean variable, though there are other ways to do this:

![Sketch](images/p23.png)

Please use lots of collours and stuff in your sketches today and share pictures on the slack. Also I created a channel on the slack for us to share our favourite coding music.

Logon to webcourses and do the MCQ

# Week 4

## Lecture

- [Program we wrote to draw a spiral](processing/spirals)
- [Program plot the sine wave](processing/sinewave)
- [The exam grade sketch we wrote in the class](processing/examMarks)
- [My spiral generative art](http://github.com/skooter500/genart1)
- Making Spirals in Processing lecture:

  [![YouTube](http://img.youtube.com/vi/wVivMDVRs3I/0.jpg)](https://www.youtube.com/watch?v=wVivMDVRs3I)

- Variables & trigonometry:

  [![YouTube](http://img.youtube.com/vi/xkK5C7Xfx80/0.jpg)](https://www.youtube.com/watch?v=xkK5C7Xfx80)

## Lab
  Today we are having a Spiral Jam

- What I want you to do it:
  - Form a team of no more than three people. Just the people sitting next to you is fine!
  - Firstly, go through the examples from the class and explain them to each other to make sure you all understand what is happening.
  - Now I want you to design a spiral or similar shape of your teams design. Just using the stuff we have learned in the class. In your spiral design, you can use
    - Variables
    - sin, cos, tan
    - angles
    - Variable operations like addition, subtraction etc
    - Colour methods and random colours
    - line, ellipse, rect etc.
  - Before you write any code decide using pen and paper:
    - What variables you need
    - Whether the variables should be local or global
    - What happens to the variables each frame (what operations to perform)
    - What to draw
    - What decisions your program has to make - what if statements you need

Here are some additional Processing methods you can incorporate into your sketches. Be brave! Look these up and try them out in your sketches and see if you can figure out how they work:

- [noise](https://processing.org/reference/noise_.html)
- [map](https://processing.org/reference/map_.html)
- [translate](https://processing.org/reference/translate_.html)
- [rotate](https://processing.org/reference/rotate_.html)
- [lerp](https://processing.org/reference/lerp_.html)
- [lerpColor](https://processing.org/reference/lerpColor_.html)

Also if you want to try making sound in Processing, you can use the [Minim library](http://code.compartmental.net/tools/minim/)

A gold star to the team that produces the sketch of the best design and complexity. Think simplicity in the design of your code and only use the minimum onumber of variables to solve your problem.

Upload your sketches to the Slack!

# Week 3
- [Quardants sketch](processing/quadrants)
- [Moving rectangle with an if statement](processing/rectangle/rectangleWithIf)

### Some videos about the if statement

[![YouTube](http://img.youtube.com/vi/mVq7Ms01RjA/0.jpg)](https://www.youtube.com/watch?v=mVq7Ms01RjA)

[![YouTube](http://img.youtube.com/vi/9857701OsDE/0.jpg)](https://www.youtube.com/watch?v=9857701OsDE)

## Lab
### Learning outcomes
- Practice using variables & offsets
- Practice using the if statement

In the class we used the if statement to get a rectangle to move from left top right across the screen and back again. Here is a [link to that sketch](processing/rectangle). Try and modify that it draws a face  that starts in the middle of the screen and then moves around the outside of the screen. This is a little trickey to get right. You should < > in your if statement and if the face goes beyond the bounds of the window, you need to move it back inside the window. Here is a video of what your sketch should look like:

[![YouTube](http://img.youtube.com/vi/lA-3AROmMiE/0.jpg)](https://www.youtube.com/watch?v=lA-3AROmMiE)

- [Solution to the lab](processing/facearoundthewall)

Do the MCQ

# Week 2
- [Program with the moving rectangle](processing/rectangle)
- [Program that draws a spiral](processing/variables)
- [Using variables in processing](https://processing.org/examples/variablescope.html)

- Data types, the if statement and dynamic sketches in Processing video (from last year)

  [![YouTube](http://img.youtube.com/vi/Y0b9W3UJ2BU/0.jpg)](https://www.youtube.com/watch?v=Y0b9W3UJ2BU)

## Lab

### Learning Outcomes
- Learn how to analyse a problem and figure out a solution
- Practice drawing in processing
- Practice using variables
- Practice using operations

Here is a video of a sketch you can make today:

[![YouTube](http://img.youtube.com/vi/uvPVGiU-bn4/0.jpg)](https://www.youtube.com/watch?v=uvPVGiU-bn4)

What is happening:

- The ground takes up half the window size
- The spaceship is 100 pixels wide and is *centered* around the mouse position.
- The person starts at the right side of the screen and moved from right to left

Use variables wherever practical in your sketch and calculate positions and sizes relative to these variables.

Bonus!

There are few things you can try (but you will probably have to read ahead and figure out how the if statement works)

- Come up with a more beautiful looking spaceship and person
- Change the colours of everything
- Make a car that drives from left to right
- When the person reaches the left side of the screen, he should switch direction
- Make the lights on the spaceship flash different colours

Post a picture of your creation on the slack.

[Log onto webcourses](http://dit.ie/webcourses) and do this weeks MCQ.

- [Solution to the lab](processing/alien)

# Week 1

## Lecture
- [Introduction slides](https://1drv.ms/p/s!Ak7y2552PWCrkMw2-mb76OvGqWk6NQ)
- [The contract for this course](https://1drv.ms/w/s!Ak7y2552PWCrjPYXt8HlWl1T1cg5Og)

##Lab
### Learning Outcomes
- Sign up for the class Slack
- Enroll on Webcourses
- Become familiar with the syntax of Processing
- Become familiar with writing and running sketches in Processing

Firstly, go to [https://gp-2016-2017.slack.com](https://gp-2016-2017.slack.com) and sign up for the slack with your DIT email address. Make sure you *click create an account* rather than try and login with your DIT credentials. When you are signed up, send a little greeting to everyone on the #general channel. If you have a smartphone, you might want to install the Slack app. It's free. Also if you install the app, you will probably want to disable certain notifications, otherwise your phone will be buzzing every time someone posts anything. [Here is an article that explains how to do this](https://slack.zendesk.com/hc/en-us/articles/201649323-Channel-and-group-notification-preferences).

Log onto Webcourses and enroll on the module GAME1003. To do this, search the module catalog for GAME and you will see it's the second option.

Look up the following methods in the [Processing language reference](http://processing.org/reference/ ) to make sure you are clear about the syntax and parameters:

* noStroke
* noFill
* line
* ellipse
* rect
* background
* stroke
* fill
* size
* arc
* triangle

Write processing sketches to draw the following shapes:

![Sketch](images/p1.png)

![Sketch](images/p1.1.png)

![Sketch](images/p1.2.png)

I find it much easier to work out the coordinates by drawing out the shapes on paper first! Try experimenting with different colours

[Log onto webcourses](http://dit.ie/webcourses) and do this weeks MCQ.