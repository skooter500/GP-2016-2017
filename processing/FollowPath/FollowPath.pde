void setup()
{
  size(500, 500);
  
  for (int i = 0 ; i < circles.length ; i ++)
  {
    circles[i] = new Circle();
    lines[i] = new Line();
  }
  
  for (int i = 0 ; i < 5 ; i ++)
  {
    waypoints.add(new PVector(random(0, width), random(0, height)));
  }
  
}

Circle[] circles = new Circle[10];
Line[] lines = new Line[10];
ArrayList<PVector> waypoints = new ArrayList<PVector>();

void drawPath()
{
  stroke(255);
  for (int i = 0 ; i <= waypoints.size() ; i ++)
  {
    PVector curr = waypoints.get(i % waypoints.size());
    PVector next = waypoints.get((i + 1) % waypoints.size());
    ellipse(curr.x, curr.y, 5, 5);
    if (i > 0)
    {
      line(curr.x, curr.y, next.x, next.y);
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