class Ship
{
  // Fields of the Ship class
  // What the ship IS
  PVector pos; // Instances of the PVector
  PVector forward;
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
    pos = new PVector(x, y);
    forward = new PVector(0, 1);
    this.radius = radius;
    theta = 0;
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    
    if (checkKey('w'))
    {
      pos.add(forward);
    }
    if (checkKey('s'))
    {
      pos.sub(forward);
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
    translate(pos.x, pos.y); // Specify them in the opposite order!
    rotate(theta);
    
    line(- radius, radius, 0, - radius);
    line(0, - radius, radius, radius);
    line(radius, radius, 0, 0);
    line(0, 0, - radius, radius);    
    popMatrix();
  }
  
}