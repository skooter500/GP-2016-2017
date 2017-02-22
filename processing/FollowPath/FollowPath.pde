void setup()
{
  size(500, 500);
  
  for (int i = 0 ; i < circles.length ; i ++)
  {
    circles[i] = new Circle();
    lines[i] = new Line();
  }
  
  for (int i = 0 ; i < waypoints.length ; i ++)
  {
    waypoints[i] = new PVector(random(0, width), random(0, height));
  }
  
}

Circle[] circles = new Circle[10];
Line[] lines = new Line[10];
PVector[] waypoints = new PVector[5];

void drawPath()
{
  stroke(255);
  for (int i = 0 ; i <= waypoints.length ; i ++)
  {
    ellipse(waypoints[i % waypoints.length].x, waypoints[i % waypoints.length].y, 5, 5);
    if (i > 0)
    {
      line(waypoints[i-1].x, waypoints[i-1].y, waypoints[i % waypoints.length].x, waypoints[i % waypoints.length].y);
    }
  }
}

void draw()
{
  background(0);
  drawPath();
  for(int i = 0 ; i < circles.length ; i ++)
  {
    circles[i].update();
    circles[i].render();
    //lines[i].update();
    //lines[i].render();
  }
}