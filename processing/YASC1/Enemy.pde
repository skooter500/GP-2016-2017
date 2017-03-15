class Enemy
{
  PVector pos;
  PVector forward;
  float speed;
  
  Enemy(float x, float y)
  {
    pos = new PVector(x, y);
    forward = new PVector();
    speed = random(1, 8);
  }
  
  void render()
  {
    stroke(255);
    fill(255);
    ellipse(pos.x, pos.y, 20, 20);
  }
  
  void update()
  {
    forward = PVector.sub(ship.pos, pos);
    forward.normalize();
    pos.add(PVector.mult(forward, speed));
    
    if (PVector.dist(pos, ship.pos) < 20)
    {
      enemies.remove(this);
    }
  }
  
  
}