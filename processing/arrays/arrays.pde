void setup()
{
  size(500, 500);
  for (int i = 0 ; i < colors.length ; i ++)
  {
    colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 100, 58};
color[] colors = new color[rainFall.length];

void draw()
{
  float barWidth = width / (float) rainFall.length;
  noStroke();
  for (int i = 0 ; i < rainFall.length ; i ++)
  {
    float x = i * barWidth;
    fill(colors[i]);
    rect(x, height, barWidth, - rainFall[i]);
  }  
}