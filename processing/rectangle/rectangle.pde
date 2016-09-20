void setup()
{
  size(500, 500);
}

float x = 0;
float rectWidth = 50;

void draw()
{
  background(0);
  rect(x, height / 2, rectWidth, rectWidth);
  
  x ++;
}