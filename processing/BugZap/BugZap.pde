void setup()
{
  size(500, 500);
  playerWidth = 40;
  bugWidth = 30;
  halfBugWidth = bugWidth / 2;
  playerX = width / 2;
  playerY = height - 50;
  bugX = random(bugWidth, width - bugWidth);
  bugY = 50;
}

float playerX;
float playerY;
float playerSpeed = 5;
float playerWidth;
float playerHeight = 50;

float bugX;
float bugY;
float bugWidth;
float halfBugWidth;
float bugHeight = 50;

int score;

void drawBug()
{
  stroke(255);
  float saucerHeight = bugWidth * 0.7f;
  line(bugX + halfBugWidth, bugY, bugX, bugY + saucerHeight);
  line(bugX + halfBugWidth, bugY, bugX + bugWidth, bugY + saucerHeight);
  line(bugX, bugY + saucerHeight, bugX + bugWidth, bugY + saucerHeight);
  float feet = bugWidth * 0.2f;
  line(bugX + feet, bugY + saucerHeight, bugX, bugY + bugWidth);
  line(bugX + bugWidth - feet, bugY + saucerHeight, bugX + bugWidth, bugY + bugWidth);
  feet = bugWidth * 0.4f;
  line(bugX + feet, bugY + saucerHeight, bugX, bugY + bugWidth);
  line(bugX + bugWidth - feet, bugY + saucerHeight, bugX + bugWidth, bugY + bugWidth);
  line(bugX + feet, bugY + feet, bugX + feet, bugY + feet * 1.1f);  
  line(bugX + bugWidth - feet, bugY + feet, bugX + bugWidth - feet, bugY + feet * 1.1f);
  line(bugX + feet, bugY + feet * 1.4f, bugX + bugWidth - feet, bugY + feet * 1.4f);  
}

void drawPlayer()
{
  float playerHeight = playerWidth / 2;
  line(playerX, playerY + playerHeight, playerX + playerWidth, playerY + playerHeight);
  line(playerX, playerY + playerHeight, playerX, playerY + playerHeight * 0.5f);
  line(playerX + playerWidth, playerY + playerHeight, playerX + playerWidth, playerY + playerHeight * 0.5f);
  
  line(playerX, playerY + playerHeight * 0.5f, playerX + playerWidth * 0.2f, playerY + playerHeight * 0.3f);
  line(playerX + playerWidth, playerY + playerHeight * 0.5f, playerX + playerWidth * 0.8f, playerY + playerHeight * 0.3f);
  line(playerX + playerWidth * 0.2f, playerY + playerHeight * 0.3f, playerX + playerWidth * 0.8f, playerY + playerHeight * 0.3f);
  line(playerX + playerWidth * 0.5f, playerY, playerX + playerWidth * 0.5f, playerY + playerHeight * 0.3f); 
}


void draw()
{
  background(0);
  stroke(255);
  drawBug();
  drawPlayer();
  
  if (frameCount % 30 == 0)
  {
    bugX += random(-20, 20);
    bugY += 1;
  }
  
  
  if (keyPressed)
  {
    if (keyCode == LEFT)
    {
      playerX -= playerSpeed;
    }
    if (keyCode == RIGHT)
    {
      playerX += playerSpeed;
    }
    
  }
}