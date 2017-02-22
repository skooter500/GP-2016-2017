class Circle
{
  PVector pos;
  PVector forward;
  float speed;
  color c;
  int cw = 0;
  
  Circle()
  {
    respawn();
  }
  
  void respawn()
  {
    pos = new PVector(-50, random(0, height));
    c = color(random(200, 255), random(200, 255), random(200, 255));
    speed = random(1, 5);
  }
  
  void update()
  {
    PVector waypoint = waypoints[cw];
    forward = PVector.sub(waypoint, pos);
    forward.normalize();
    pos.add(PVector.mult(forward, speed));
    if (dist(waypoint.x, waypoint.y, pos.x, pos.y) < 10)
    {
      cw = (cw + 1) % waypoints.length;
    }
  }
  
  void render()
  {
    noStroke();
    fill(c);
    ellipse(pos.x, pos.y, 20, 20);
  }  
}