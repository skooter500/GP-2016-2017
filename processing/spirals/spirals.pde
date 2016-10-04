void setup()
{
  size(500, 500);  
  theta = 0;
  radius = 5;
  cx = width / 2;
  cy = height / 2;
  smallRadius = 60;
}
float cx, cy;
float x, y;
float theta;
float radius;
float smallRadius;
void draw()
{
  noStroke();
  
  //background(0);
  x = cx + (sin(theta) * radius);
  y = cy + (cos(theta) * radius);
  fill(x, y, 255 -y);
  ellipse(x, y, smallRadius, smallRadius);
  theta += 0.1f;
  radius += 1;
  smallRadius -= .5;
}