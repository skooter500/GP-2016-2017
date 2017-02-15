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


void draw()
{
  background(0);
  c1.update();
  c1.render();
  c2.update();
  c2.render();
  
  l.update();
  l.render();
  
  for (int i = 0 ; i < wayPoints.size() ; i ++)
  {
    PVector c = wayPoints.get(i);
    int next = (i + 1) % wayPoints.size();
    PVector n = wayPoints.get(next);
    ellipse(c.x, c.y, 10, 10);
    line(c.x, c.y, n.x, n.y);
  }
}