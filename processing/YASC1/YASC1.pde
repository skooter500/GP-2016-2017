void setup()
{
  size(500, 500);
  
  // Instiantiating the ship variable
  ship = new Ship(width /2, height / 2, 50);
  ship1 = new Ship(150, 50, 100);
}
// Making a variable called ship of type Ship
Ship ship;
Ship ship1;

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(3);
  ship.update();
  ship.render();
  
  ship1.update();
  ship1.render();
}

boolean[] keys = new boolean[1000];

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}