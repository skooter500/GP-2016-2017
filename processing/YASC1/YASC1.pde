// Make an enemy class!
// Make an arraylist of enemies
// Create some enemies and add them to the array list
// When the bullet hits the enemies, the enemies get removed!


void setup()
{
  size(500, 500);
  
  // Instiantiating the ship variable
  ship = new Ship(width /2, height / 2, 20);
  ship1 = new Ship(150, 50, 100);
  
 /* PVector a = new PVector(7, 13);
  PVector b = new PVector(25, 3);
  
  float opp = b.x - a.x;
  float adj = b.y - a.y;
  float hyp = sqrt(pow(a.x - b.x, 2) + pow(a.y - b.y, 2));
  
  float theta = atan(opp / adj);
  
  PVector norm = new PVector();
  
  norm = PVector.sub(b, a);
  norm.x /= hyp;
  norm.y /= hyp;
  
  println(norm);
  
  norm = PVector.sub(b, a);
  norm.normalize();
  println(norm);
  
  norm.x = sin(theta);
  norm.y = -cos(theta);
  println(norm);
  */
  
}
// Making a variable called ship of type Ship
Ship ship; // Instances of the Ship class
Ship ship1;

ArrayList<Enemy> enemies = new ArrayList<Enemy>();

void draw()
{
  background(0);
  stroke(255);
  strokeWeight(3);
  
  ship.update();
  ship.render();
  
  for(int i = 0 ; i < bullets.size() ; i ++)
  {
    Bullet b = bullets.get(i);
    b.update();
    b.render();
  }
  
  if (frameCount % 60 == 0)
  {
    Enemy e = new Enemy(-50, random(0, height));
    enemies.add(e);
  }
  
  for(int i = 0 ; i < enemies.size() ; i ++)
  {
    Enemy e = enemies.get(i);
    e.update();
    e.render();
  }
  
  println(bullets.size());
}

boolean[] keys = new boolean[1000];

ArrayList<Bullet> bullets = new ArrayList<Bullet>();

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