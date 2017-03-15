class Circle
{
  PVector pos;
  PVector forward;
  float radius;
  color c;
  
  int cw; // the current waypoint
  
  float speed;
  
  Circle(float x, float y, float r, color c)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    radius = r;
    this.c = c;
    this.speed = random(1, 10);
  }
  
  Circle()
  {
    // Constructor chaining
    this(width / 2, height / 2, 10, color(255, 255, 255));    
  }
  
  void update()
  {
    
    // Follow the mouse
    
    /*
    PVector mouse = new PVector(mouseX, mouseY);
    forward = PVector.sub(mouse, pos);
    forward .normalize();
    pos.add(forward);
    */
    
    // Follow the path
    PVector current = wayPoints.get(cw);
    if (PVector.dist(current, pos) < 10)
    {
      cw = (cw + 1) % wayPoints.size();
    }
    
    forward = PVector.sub(current, pos);
    forward .normalize();
    pos.add(PVector.mult(forward, speed));
    
    
    /*
    a = b + c; a = PVector.add(b, c); // static method
    a += b; = a.add(b);
    
    a = b - c; a = PVector.sub(b, c);
    a -= c; a.sub(c);    
    */
  }
  
  void render()
  {
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, radius * 2, radius * 2);
  }
  
}