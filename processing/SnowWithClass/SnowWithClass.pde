void setup()
{
  size(500, 500);
  
  for (int i = 0 ; i < snowFlakes.length ; i ++)
  {
    snowFlakes[i] = new SnowFlake();
    snowFlakes[i].sx = random(0, width);
    snowFlakes[i].sy = random(-height, 0);
    snowFlakes[i].speed = random(1, 10);
    snowFlakes[i].size = random(1.0f, 10.0f);
    snowFlakes[i].theta = random(0.0f, TWO_PI);
    snowFlakes[i].thetaSpeed = random(0.0f, 0.1f);
    snowFlakes[i].opacity = (int) random(100, 255);
  }
}

int snowCount = 100;
SnowFlake[] snowFlakes = new SnowFlake[snowCount];

void draw()
{
  background(0);
  noStroke();
  
  for (int i = 0 ; i < snowFlakes.length ; i ++)
  {
    snowFlakes[i].update();
    snowFlakes[i].render();
    
  }

}