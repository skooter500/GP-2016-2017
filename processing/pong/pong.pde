import processing.serial.*;

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Serial myPort;  // Create object from Serial class
String val;     // Data received from the serial port


void setup()
{
  size(500, 500);
  
  batSpeed = 10;
  batHeight = 100;
  batWidth = 20;
  ballSize = 20;
  
  rectMode(CENTER);
  
  // Calculate starting positions for the bat & ball
  ballX = width /2;
  ballY = height / 2;
  
  batY[0] = height / 2;
  batY[1] = height / 2;
  
  batX[0] = border;
  batX[1] = width - border;
  
  ballSpeedX = 1;
  ballSpeedY = 1;
  
  minim = new Minim(this);
  ap = minim.loadFile("Blip_Select2.wav");
  noCursor();
  
  String[] portName = Serial.list(); //change the 0 to a 1 or 2 etc. to match your port
  for(int i = 0 ; i < portName.length ; i ++)
  {
    println(portName[i]);
  }
  myPort = new Serial(this, portName[0], 9600);
  
}
float border = 50;
float batSpeed;
float ballSize;
float batWidth;
float batHeight;
float ballSpeedX;
float ballSpeedY;
float ballX;
float ballY;
Minim minim;
AudioPlayer ap;

int[] score = new int[2];
float[] batX = new float[2];
float[] batY = new float[2];

boolean[] keys = new boolean[1000];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

boolean checkKey(int k)
{
  return keys[Character.toLowerCase(k)] || keys[Character.toUpperCase(k)];
}

void drawBall()
{
  rect(ballX, ballY, ballSize, ballSize);
}

void drawBats()
{
  for(int i = 0 ; i < batX.length ; i ++)
  {
    rect(batX[i], batY[i], batWidth, batHeight);
  }
}

int s = 0;

void draw()
{
  background(0);
  noStroke();
  fill(255);
  drawBall();
  drawBats();
  
  if (checkKey('q'))
  {
    batY[0] -= batSpeed;
  }
  if (checkKey('a'))
  {
    batY[0] += batSpeed;
  }
  if (checkKey('p'))
  {
    batY[1] -= batSpeed;
  }
  if (checkKey('l'))
  {
    batY[1] += batSpeed;
  }
  
  for (int i = 0 ; i < batX.length ; i ++)
  {
    if (batY[i] - batHeight / 2 < 0)
    {
      batY[i] = batHeight / 2;
    }
    if (batY[i] > height - batHeight / 2)
    {
      batY[i] = height - batHeight / 2;
    }
  }
  
  if (checkKey(' '))
  {
    ap.rewind();
    ap.play();
  }
  
  
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  float halfBall = ballSize / 2;
  float halfBatWidth = batWidth / 2;
  float halfBatHeight = batHeight / 2;  
  if (ballX + halfBall > batX[1] - halfBatWidth 
      && ballY - halfBall < batY[1] + halfBatHeight
      && ballY + halfBall >  batY[1] - halfBatHeight)
      {
        ballSpeedX = - ballSpeedX;
      }
  
  // Put in code for the rest of the bat 
  // movement and then put code
  // to make sure the bats dont move off the 
  // top or bottom of the screen 
  
  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
    println(val); //print it out in the console
    if (val != null)
    {
      s = int(val.substring(2));
    }
  } 
  println(s);
}