# DT508 Game Programming Assignments 2016-2017

# Last years marks

Tests - 50%
- Lab Test 1 25%
- Lab Test 2 25%

Assignments - 50%
- Assignment 1 - (Christmas card) - 15%
- Assignment 2 - (Game you make over Christmas) - 15%
- Assignment 3 - (Semester 2 assignment) - 15%
- MCQ's 5 - 5%

## Assignment 3 - 

- Project teams chosen by 9th March
- Final project submission & demo Thursday 27 April

For this assignment you can do a team project with a team of up to 3 people. You can choose your own teams. You can have less than 3 people and you can also do an individual assignment if you prefer. It would be great if you could manage your code through a public git repository and you can use either Processing or Unity. The theme of the assignment is:

"Something beautiful to enjoy while listening to music."

I will need you to make a youtube video demonstrating your assignment and write a document in markdown format with the following sections:

- What your assignmenmt does
- What the controls are
- How to make it run
- A list of the stuff you are most proud of. This will help me to grade the assignments.

Your assigmment can be a game or just a visual art piece. You can make your assignment respond to whatever music is playing or it can be something inspired by a particular piece of music. I expect you to have to do self directed learning on the project and come up with ideas and code that we haven't done in the class. Check out Joey B's assignment from last year for inspiration:  

[![Video](http://img.youtube.com/vi/ObH8ffqzseU/0.jpg)](http://www.youtube.com/watch?v=ObH8ffqzseU)

Marking Scheme:

Complexity 20%
Visuals 20%
Project management 20%
Documentation 20%
Jazz 20%

Rubric

| Grade | Description |
| ------|-------------|
| First | The assignment is technically complex with lots of elements responding to or synchronised to sound. Lots of interactivity and things to see and do in the assignment. You have done lots of self directed learning and included many advanced coding techniques that you have taught yourself. The assignment uses input devices to control your assignment such as the Kinect, Leap motion, microphone, webcam, a game controller or a custom controller. Your code is organised into classes that use inheritance and polymorphism. You have used vectors, transforms and physics. The colours you have chosen are harmonious and beautiful. Your team worked well together. You divided up the work equally and each team member made an equal contribution. You demoed your assignment with pride at DubLudo or similar event or performed it at a public event and got feedback. The assignment is well documented with detailed instructions and a youtube video. Your team made or programmed all the art assets to a high standard. You worked on the assignment making stead progress and have documented this. Your creation is an enjoyable experience that really suits the music you are using. |
| 2.1 | The assigmment is fairly complex with some elements responding to sound in a straightforward way such as colours changing or shapes changing size. There is a little interactivity. You have added a few features that you have had to learn some programming stuff for. You use a game controller. Your team made or programmed all the art assets but maybe got some stuff online too. Your colours are good but could use some improvement to make them more beautiful. Your team worked well together and your document includes the main features and controls. One or two people on the team did more of the coding, so they get the bulk of the marks. You have used classes, but maybe not inheritance & polymorphism.  |
| 2.2 | The assignment isn't complex and is mostly based on modifying the examples we developed in the class. Your documentation is minimal and little evidence of good project management. Development on the project was rushed and you left everything until the week before the submission deadline. There are are incomplete features or things you planned to get working and couldn't. No youtube video or minimal documentation. |
| Pass | Something very basic that is just a small modification of the code we developed in the class. Missing documentation. Completed in the days before the submissiond deadline and minimal or missing documentation. |
| Fail | Project won't compile or major issues. |

## Assignment 2
Create this game in Processing:

[![Video](http://img.youtube.com/vi/Qx0Z3MS3Lzg/0.jpg)](http://www.youtube.com/watch?v=Qx0Z3MS3Lzg)

Your game must include the following features:
- A splash screen, game screen and game over screen
- Player up and down movement
- Black blocks that move from right to left. If the player collides with one of the black blocks, they will loose a life. These should have random y positions. Ideally these should be evenly spaced
- When the number of lives goes to 0, it is game over.
- Random yellow blocks. If the player collides with one of these, they should gain a point.
- The game should speed up hence becoming more difficult as it goes on.

You should use the following features of Processing
- Variables, arrays
- Classes
- Loops
- Drawing primitives
- The if statement
- User input

Marking scheme:
- 50% of the marks for this assignment are for implementing the core game as presented in the video
- To get the remaining 50% of the marks you have to come up with your own additions to te core game. Some suggestions:
	- Power up blocks that speed up or slow down the gameplay
	- Extra life blocks
	- Additional gameplay. For example, the ability to shoot blocks
	- Sprites and nice graphics and sound
	- Running on an Android Phone or Raspberry Pi
	- Control with a Kinect, XBOX Controller or Leap Motion
	- Different types of block behaviours instead of just falling 
	- Any other crazy ideas you can come up with your self

Rules!

- As much as possible this project should be 100% your own code. You will not get any marks for any code that include that you get from books or from the internet. This assignment is about testing what *you* have learned and what *you* can do.
- The date for submission is Monday 13 February 2017
- All assignment submissions must be demoed in the lab that week.
- If you need to submit an assignment late, you must submit a PC/1 form to the exams office.

# Assignment 1

Create an animated Christmas card in Processing. You must make the Christmas card for someone and give it to that person. 
Here are some examples of previous assignments that students have done:

[![Video](http://img.youtube.com/vi/Yy5MzcFQ99s/0.jpg)](http://www.youtube.com/watch?v=Yy5MzcFQ99s)
[![Video](http://img.youtube.com/vi/S575a92AsuQ/0.jpg)](http://www.youtube.com/watch?v=S575a92AsuQ)
[![Video](http://img.youtube.com/vi/wAEABphUJB8/0.jpg)](http://www.youtube.com/watch?v=wAEABphUJB8)

In your christmas card you should use:

- Procedural drawing (no sprites!)
- Variables
- The if statement
- Loops
- Methods
- Arrays
- Any other cool stuff you have taught yourself in Processing 

Marking scheme:

| Complexity | Code | Visuals | Jazz |
|------------|----|---------|------|
|30%         |20% |20%      |30%   |

Rubric:

| Grade | Description |
| ------|-------------|
| First | Animation, loops, arrays and methods used extensively and correctly. Everything parameterised. Use of audio and fonts. Some simple interactivity such as a game. Use of keyboard, mouse or controller input. Music and fonts. Use of some advanced features of Processing we havent covered in class such as classes and libraries. 200+ lines of code|
| 2.1 | Lots of animation, loops and arrays. Methods. Also using audio and fonts. Little or no interactivity. Between 100 and 200 lines of code |
| 2.2 | No animation or simple back and forth type animation, use of loops, but no arrays. Some duplicated code that could be replaced by an array or a loop. Some methods, but no parameters instead using global variables (or no methods). Around 100 lines of code|
| Pass | No animation. No loops or arrays, just some simple drawing in the draw method, or some attempt at loops that doesnt work. 20-50 lines of code |
| Fail | Project won't compile or major issues. |
