void setup()
{
  size(500, 500);
  stroke(255);
  
  mask = createShape();
  mask.beginShape();
  mask.fill(0);
  mask.noStroke();
  mask.vertex(0,0);
  mask.vertex(width,0);
  mask.vertex(width,height);
  mask.vertex(0,height);
  mask.beginContour();
  float sides = 20;
  float thetaInc = TWO_PI / sides; 
  float radius = 100;
  for (int i = 0 ; i <= sides ; i ++)
  {
    float theta = i * thetaInc;
    float x = width / 2 + sin(theta) * radius;
    float y = height / 2 + cos(theta) * radius;
    mask.vertex(x, y);
  }
  mask.endContour();
  mask.endShape();
}

PShape mask;
int numStars = 100;
void draw()
{
  background(0);
  for (int i = 0 ; i < 100 ; i ++)
  {
    drawStar(random(0, width), random(0, width), random(1, 10)); 
  }  
  
  shape(mask, 0, 0);
}

void drawStar(float x, float y, float size)
{
  pushMatrix();
  translate(x, y);
  stroke(255);
  line(- size, 0, size, 0);
  line(0, - size, 0, size);
  popMatrix();
}