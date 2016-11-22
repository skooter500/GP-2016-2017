void setup()
{
  size(500, 500);
  
  for (int i = 0 ; i < sx.length ; i ++)
  {
    sx[i] = random(0, width);
    sy[i] = random(-height, 0);
    speed[i] = random(1, 10);
    size[i] = random(1.0f, 10.0f);
  }
}

int snowCount = 100;
float[] speed = new float[snowCount];
float[] size = new float[snowCount];

float[] sx = new float[snowCount];
float[] sy = new float[snowCount];
float theta = 0;
void draw()
{
  background(0);
  noStroke();
  fill(255);
  for (int i = 0 ; i < sx.length ; i ++)
  {
    ellipse(sx[i], sy[i], size[i], size[i]);
    sy[i] += speed[i];
    sx[i] += sin(theta) * 10;
    if (sy[i] > height)
    {
      sy[i] = 0;
      speed[i] = random(1, 10);
      
      size[i] = random(1.0f, 10.0f);
    }
  }
  theta += 0.1f;
}