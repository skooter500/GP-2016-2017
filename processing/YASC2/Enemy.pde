class Enemy
{
  PVector pos;
  PVector forward;
  float speed;
  ArrayList<PVector> waypoints = new ArrayList<PVector>();
  int cw = 0;
  
  Enemy(float x, float y)
  {
    pos = new PVector(x, y);
    forward = new PVector();
    speed = random(1, 3);
    
    for (int i = 0 ; i < 5 ; i ++)
    {
      waypoints.add(new PVector(random(0, width), random(0, height)));
    }
  }
  
  void render()
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(pos.x, pos.y, 20, 20);
  }
  
  void update()
  {
    PVector waypoint = waypoints.get(cw); 
    forward = PVector.sub(waypoint, pos);
    forward.normalize();
    pos.add(PVector.mult(forward, speed));
    
    if (PVector.dist(waypoint, pos) < 10)
    {
      cw = (cw + 1) % waypoints.size();
      float theta = atan2(ship.pos.y - pos.y, ship.pos.x - pos.x) + (PI * 0.5f);
      Bullet b = new Bullet(pos.x, pos.y, theta, false);
      bullets.add(b);
    }
  } 
}