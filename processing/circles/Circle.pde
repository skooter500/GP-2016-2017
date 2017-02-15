class Circle
{
  PVector pos;
  PVector forward;
  float radius;
  color c;
  
  Circle(float x, float y, float r, color c)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    radius = r;
    this.c = c;
  }
  
  Circle()
  {
    // Constructor chaining
    this(width / 2, height / 2, 10, color(255, 255, 255));    
  }
  
  void update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    forward = PVector.sub(mouse, pos);
    forward .normalize();
    pos.add(forward);
    
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