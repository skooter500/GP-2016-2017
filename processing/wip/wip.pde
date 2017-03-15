void setup()
{
  size(500, 500);
  c1 = new Circle(50, 50, 25, color(255, 0, 0));
  c2 = new Circle();
  l = new Line(0, 100);
  
  for (int i = 0 ; i < 5 ; i ++)
  {
    wayPoints.add(new PVector(random(0, width), 
          random(0, height)));
  }
  for (int i = 0 ; i < 5 ; i ++)
  {
    PVector p = wayPoints.get(i);
    //PVector p = wp[i];
    println(p.x);
  }
 
  
  /* Allocate like this
  ArrayList<PVector> wayPoints 
  = new ArrayList<PVector>();
  
  Add elements
  wayPoints.add(new PVector(random(0, width), 
          random(0, height)));
  // Return an element
  .get
  */
  
}

Circle c1;
Circle c2;
Line l;

PVector[] wp = new PVector[5];
ArrayList<PVector> wayPoints 
  = new ArrayList<PVector>();

ArrayList<Circle> circles = new ArrayList<Circle>();

void draw()
{
  background(0);
  
  if (frameCount % 60 == 0)
  {
    circles.add(new Circle(random(0, width), random(0, height), random(5, 20), color(random(0, 100), 255, 0)));
  }
  
  for(int i = 0 ; i < circles.size() ; i ++)
  {
    circles.get(i).update();
    circles.get(i).render();
    
  }
  
  for (int i = 0 ; i < wayPoints.size() ; i ++)
  {
    stroke(255);
    PVector c = wayPoints.get(i);
    int next = (i + 1) % wayPoints.size();
    PVector n = wayPoints.get(next);
    ellipse(c.x, c.y, 10, 10);
    line(c.x, c.y, n.x, n.y);
  }
}