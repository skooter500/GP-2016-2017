class Bullet
{
  PVector pos;
  PVector forward;
  float theta;
  
  Bullet(float x, float y, float theta)
  {
    pos = new PVector(x, y);
    forward = new PVector(0, -1);
    this.theta = theta;
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    
    pos.add(PVector.mult(forward, 10));
    
    if (pos.x < 0)
    {
      bullets.remove(this);
    }
  }
  
  void render()
  {
    pushMatrix();
    
    translate(pos.x, pos.y);
    rotate(theta);
    line(0, -10, 0, 10);
    popMatrix();
  }
  
  
}