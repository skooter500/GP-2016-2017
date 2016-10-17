void setup()
{
  size(500, 500);
  halfW = width / 2;
  greenAreaStart = halfW - 100;
  greenAreaEnd = halfW + 100;
}
float halfW;
float greenAreaStart;
float greenAreaEnd;

void draw()
{
  if (mouseX < greenAreaStart)
  {
    background(255, 0, 0);
  }
  else if (mouseX >= greenAreaStart && mouseX < greenAreaEnd)
  {
    background(0, 255, 0);
  }
  else 
  {
    background(0, 0, 255);
  }
}