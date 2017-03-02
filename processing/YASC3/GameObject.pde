// The base class( aka superclass)

class GameObject
{
    PVector pos;
    PVector forward;
    float theta;

    GameObject(float x, float y, float theta)
    {
      pos = new PVector(x, y);
      forward = new PVector();
      this.theta = theta;
    }
    
    void update() { }
    
    void render() { }

}