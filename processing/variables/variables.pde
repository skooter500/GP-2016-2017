void setup() // No seimcolon when 
// the next line starts a block
{ // This is the start of a block
  size(500, 500);      
} // The end of a block


float x = 0, y = 0;
float theta = 0;
float radius = 10;

void draw()
{
  //background(255);
  noStroke();
  x = 250 + sin(theta) * radius;
  y = 250 + cos(theta) * radius;
  fill(0,  random(100, 200), random(50, 100));
  ellipse(x, y, 100, 100);  
  theta += 0.1f;
  radius += 0.2f;
}