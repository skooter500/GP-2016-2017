void setup()
{
  size(500, 500);
  x = width / 2;
  y = 0;
  theta = 0;
}

float x, y;
float lx, ly;
float theta;

void draw()
{
  //background(0);
  stroke(255);
  fill(255);
  x = (width / 2) + (noise(theta) * 100);

  line(x, y, lx, ly);
  y += 1;
  theta += 0.01f;
  lx = x;
  ly = y;
}