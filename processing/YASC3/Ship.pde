class Ship extends GameObject
{
  // Fields of the Ship class
  // What the ship IS
  float radius = 25;
  int lives = 10;
  
  // Constructor method
  // A special method that gets called
  // Whenever we make a Ship variable  
  Ship(float x, float y, float radius)
  {
    super(x, y, 0); // This constructs the GameObject part of the Ship
    // this is a reference to the current ship
    // this.x means the x that is
    // part of the ship
    this.radius = radius;
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
    
    if (checkKey(' '))
    {
      PVector inFront = PVector.add(pos, PVector.mult(forward, radius));
      Bullet b = new Bullet(inFront.x, inFront.y, theta, true);
      gameObjects.add(b);
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
    fill(255);
    text("Lives: " + lives, 10, 20);
  }
  
}