void setup()
{
  size(500, 500);
  py = height - 100;
  px = width + 10;
}

float ssWidth = 100;
float ssHeight = 50;
float halfw = ssWidth / 2;
float halfh = ssHeight / 2;

float px, py;
float pspeed = -1;

void draw()
{
  background(0);
  noStroke();
  fill(255, 255, 0);
  rect(0, height / 2, width, height / 2); 
  
  // Draw the spaceship
  fill(255);
  rect(mouseX - halfw / 2, mouseY - halfh, ssWidth / 2, halfh);
  rect(mouseX - halfw, mouseY, ssWidth, halfh);
  float gap =  ssWidth / 4;
  float circleY = mouseY + 13;
  fill(0, 0, 255);
  ellipse(mouseX - gap, circleY, 12, 12);
  ellipse(mouseX, circleY, 12, 12);
  ellipse(mouseX + gap, circleY, 12, 12);
  
  // Draw the person  
  fill(255, 0, 0);
  ellipse(px, py, 10, 10);
  stroke(255, 0, 0);
  line(px, py + 30 , px, py);
  line(px, py + 30 , px - 10, py + 40);
  line(px, py + 30 , px + 10, py + 40);
  line(px - 10, py + 20 , px + 10, py + 20);
  px += pspeed;
  
  // Draw the car
  
  
}