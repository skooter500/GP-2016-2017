class Ship
{
  // Fields of the Ship class
  // What the ship IS
  float x;
  float y;
  float fx;
  float fy;
  float radius = 25;
  float theta;
  
  // Constructor method
  // A special method that gets called
  // Whenever we make a Ship variable  
  Ship(float x, float y, float radius)
  {
    // this is a reference to the current ship
    // this.x means the x that is
    // part of the ship
    this.x = x;
    this.y = y;
    this.radius = radius;
    theta = 0;
  }
  
  void update()
  {
    println("fx: " + fx + " fy: " + fy);
    fx = sin(theta);
    fy = - cos(theta);
    
    if (checkKey('w'))
    {
      x += fx;
      y += fy;
    }
    if (checkKey('s'))
    {
      x -= fx;
      y -= fy;
    }
    if (checkKey('a'))
    {
      theta -=0.1f;
    }
    if (checkKey('d'))
    {
      theta += 0.1f;
    }
  }
  
  void render()
  {
    pushMatrix();
    translate(x, y); // Specify them in the opposite order!
    rotate(theta);
    
    line(- radius, radius, 0, - radius);
    line(0, - radius, radius, radius);
    line(radius, radius, 0, 0);
    line(0, 0, - radius, radius);    
    popMatrix();
  }
  
}