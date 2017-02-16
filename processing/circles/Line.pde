class Line
{
  PVector pos;
  PVector forward;
  
  float theta;
  
  Line(float x, float y)
  {
    pos = new PVector(x, y);
    theta = 0;
    forward = new PVector(1, 0);
  }
  
  void render()
  {
    stroke(255);
    strokeWeight(2);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    line(0, -10, 0 , 10);
    popMatrix();
  }
  
  float deltaTime = 1.0f / 60.0f;
  float speed = width / 3.0f;
  void update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    forward = PVector.sub(mouse, pos);
    forward .normalize();
    theta = atan2(forward.y, forward.x) + (PI / 2.0);
    
    pos.add(PVector.mult(forward, speed * deltaTime));
    
    
  }
}