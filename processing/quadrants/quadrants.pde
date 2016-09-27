void setup()
{
  size(500, 500);
  halfW = width / 2;
  halfH = height / 2;
}

float halfW, halfH;

void draw()
{
  background(0);
  noStroke();
  if (mouseX < halfW && mouseY < halfH)
  {
    fill(0, 0, 255);
    rect(0, 0, halfW, halfH);
  }
  else if (mouseX >= halfW && mouseY < halfH)
  {
    fill(255, 0, 0);
    rect(halfW, 0, halfW, halfH);
  }
  else if (mouseX < halfW && mouseY >= halfH)
  {
    fill(255, 255, 0);
    rect(0, halfH, halfW, halfH);
  }
  else
  {
    fill(0, 255, 0);
    rect(halfW, halfH, halfW, halfH);
  }
}