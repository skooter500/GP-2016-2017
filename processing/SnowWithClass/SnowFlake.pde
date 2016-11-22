// Encapsulation
class SnowFlake
{
  float sx;
  float sy;
  float size;
  float theta;
  float speed;
  float thetaSpeed;
  
  int opacity;
  
  void update()
  {
    sy += speed;
    if (sy > height)
    {
      sy = 0;
      speed = random(1, 10);      
      size = random(1.0f, 10.0f);
      thetaSpeed = random(0, 0.1f);
    }
    theta += thetaSpeed;
  }
  
  void render()
  {
    fill(255, 255, 255, opacity);
    ellipse(sx + noise(theta) * 30, sy, size, size);   
  } 
}