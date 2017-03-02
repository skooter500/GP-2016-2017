void setup()
{
  size(500, 500);
  
  // Instiantiating the ship variable
  ship = new Ship(width /2, height / 2, 20);
  gameObjects.add(ship);
  
}
// Making a variable called ship of type Ship
Ship ship; // Instances of the Ship class

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(3);
    
  for(int i = 0 ; i < gameObjects.size() ; i ++)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
  }
  
  if (frameCount % 60 == 0)
  {
    Enemy e = new Enemy(-50, random(0, height));
    gameObjects.add(e);
  }
   
  println(gameObjects.size());
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