void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
}

float cx, cy;

void draw()
{

  // Flag
  boolean dark = true;
  int rows = 20, cols = 20;
  float cellW, cellH;
  cellW = width / cols;
  cellH = height / rows;

  for (int y = 0 ; y < height ; y += cellH)
  {
    for(int x = 0 ; x < width ; x += cellW)
    {
      if (dark)
      {
        fill(0, 0, 255);
      }
      else
      {
        fill(0, 0, 128);
      }
      rect(x, y, cellW, cellH);
      dark = ! dark;
    }
    dark = ! dark;
  }

  // Boxes
  float boxHeight = 30;
  float boxWidth = 100;
  for (float i = 0 ; i < 5 ; i ++)
  {
    float y = boxHeight + ( i * boxHeight);
    float x = cx - (boxWidth / 2);
    rect(x, y, boxWidth, boxHeight);
    boxWidth -= 20;
  }

  // Clock
  fill(0);
  float thetaInc = TWO_PI / 12;
  float radius = 100;
  for (int i = 1 ; i <= 12 ; i ++)
  {

    float theta = i * thetaInc;
    float x = cx + sin(theta) * radius;
    float y = cy - cos(theta) * radius;

    text((i), x, y);
  }



  // Flowers
  float petals = 10;
  thetaInc = TWO_PI / petals;

  radius = 100;
  noStroke();
  fill(0, 0, 255);
  ellipse(cx, cy, radius * 2, radius * 2);
  for (float i = 0 ; i < petals ; i ++)
  {

    float theta = i * thetaInc;
    float x = cx + sin(theta) * radius;
    float y = cy + cos(theta) * radius;
    fill(255, 0, 0);
    ellipse(x, y, 70, 70);
  }


  // Lines
  stroke(0);
  for (int x = 0 ; x <= width ; x += 20)
  {
    line (x, 0, width - x, height);
  }

  for (int y = 0 ; y <= height ; y += 20)
  {
    line (0, y, width, height - y);
  }

  // Circles
  float numCircles = 10;
  float cw = width / numCircles;
  for(int i = 0 ; i < numCircles ; i ++)
  {
    float x = i * cw + (cw / 2);
    ellipse(x, 200, cw, cw);
  }




}