void setup()
{
  size(800, 600);
  smooth();
  background(0);
   // Generate the random starfield
   for (int i = 0 ; i < 100; i ++)
   {
           int x = (int)random(0, width);
           int y = (int)random(0, height);
           int red = (int)random(0, 255);
           int green = (int)random(0, 255);
           int blue = (int)random(0, 255);
           stroke(red, green, blue);
           point(x, y);
   }

}

int x = 100;
int y = 100;

void drawFace(int x, int y, int red, int green, int blue, boolean smile)    
{
  stroke(red, green, blue);
  ellipse(x + 25, y + 25, 50, 50);
  // The eyes and nose    
  ellipse(x + 15, y + 10, 4, 4);
  ellipse(x + 35, y + 10, 4, 4);
  ellipse(x + 25, y + 25, 4, 4);    

  // The mouth
  line(x + 20, y + 38, x + 30, y + 38);
  if (smile)
  {    
    // Draw an upturned mouth
    line(x + 20, y + 38, x + 18, y + 35);
    line(x + 30, y + 38, x + 32, y + 35);
  }
  else
  {
    // Draw a downturned mouth
    line(x + 20, y + 38, x + 18, y + 41);
    line(x + 30, y + 38, x + 32, y + 41);
  }
}


void starship()
{
   stroke(255);
   fill(0);
   ellipse(x + 50, y + 20, 36, 36);
   line(x + 35, y + 10, x + 10, y + 20);
   line(x + 35, y + 30, x + 10, y + 20);
  
   line(x + 20, y + 15, x + 10, y + 10);
   line(x + 20, y + 25, x + 10, y + 30);
  
   line(x + 00, y + 10, x + 20, y + 10);
   line(x + 00, y + 30, x + 20, y + 30);
}

void draw()
{
       // Generate the road
       int middleX = width / 2;
       int middleY = height / 2;
       
       //
       stroke(255, 255, 0);
       for (int i = 0 ; i < width ; i +=10)
       {
         line(i, height - 1, middleX, middleY);
       }

       // Generate the perspective
       int yy = middleY;
       int yInc = 1;
       while (yy < height)
       {
               line(0, yy , width - 1, yy);
               yy += yInc;
               yInc += 1;
       }

     
     starship();
     drawFace(200, 100, 255, 255, 255, true);
     //x = x + 3;
     if (x > width)
     {
       x = 0;
     }
       
}