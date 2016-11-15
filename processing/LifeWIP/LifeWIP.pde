// If cell is alive
// If 2-3 live neighbours survives
// if < 2 dies lonelyness
// If > 3 dies due to overcrouding
// If cell is currently dead
// If it has exactly 3 neighbours
// It comes to life

void updateBoard()
{  
  
  // Nested for loop
  // count the cells
  // apply the rules to the next board
  
  for(int row = 0 ; row < rowCount ; row ++)
  {
    for (int col = 0 ; col < colCount ; col ++)
    {
      int c = countLiveCellsSurrounding(row, col);
      next[row][col] = false;  
      if (board[row][col])
      {
        if (c < 2 || c > 3)
        {
          // Dies
          next[row][col] = false;
        }
        if (c == 2 || c == 3)
        {
          next[row][col] = true;
        }
      }
      else
      {
        if (c == 3)
        {
          next[row][col] = true;
        }
      }
    }
  }
  
  boolean[][] temp;
  temp = board;
  board = next;
  next = temp;
  
}

void setup()
{
  size(500, 500);
  cellWidth = width / colCount;
  cellHeight = height / rowCount;
  
  board[20][20] = true; // Row, Col
  board[20][21] = true; // Row, Col
  board[21][20] = true;
  board[21][19] = true;
  board[22][20] = true;
  //frameRate(10);
  
   println(countLiveCellsSurrounding(1, 4));
}

void mouseDragged()
{
  if (mouseX >= width || mouseY >= height)
  {
    return; // Jump out of the method 
    // back to the code that called the method
  }
  int row = (int) (mouseY / cellWidth);
  int col = (int) (mouseX / cellHeight);
  board[row][col] = true;  
}

void mousePressed()
{
  int row = (int) (mouseY / cellWidth);
  int col = (int) (mouseX / cellHeight);
  board[row][col] = true;  
}

void clearBoard()
{
  for(int row = 0 ; row < rowCount ; row ++)
  {
    for(int col = 0 ; col < colCount ; col ++)
    {
      board[row][col] = false;
    }
  }
}

int rowCount = 50,colCount = 50;
float cellWidth, cellHeight;
boolean[][] board = new boolean[rowCount][colCount];
boolean[][] next = new boolean[rowCount][colCount];

// Finish this off!!
int countLiveCellsSurrounding(int row, int col)
{
  int count = 0;
  
  if (row > 0 && col > 0 && board[row - 1][col -1]) //<>//
  {
    count ++;
  }
  if (row > 0 && board[row - 1][col])
  {
    count ++;
  }
  if (row > 0 && col < (colCount - 1) && board[row - 1][col +1])
  {
    count ++;
  }
  if (col > 0 && board[row][col -1])
  {
    count ++;
  }
  if (col < (colCount -1) && board[row][col +1])
  {
    count ++;
  }
  
  if (row < rowCount -1 && col > 0 && board[row +1][col -1])
  {
    count ++;
  }
  if (row < rowCount -1 && board[row + 1][col])
  {
    count ++;
  }
  if (row < rowCount -1 && col < colCount - 1 && board[row + 1][col +1])
  {
    count ++;
  }
  return count;
}


void draw()
{    
   background(0);
   stroke(128);
   
   for(int row = 0 ; row < rowCount ; row ++)
   {
     for (int col = 0 ; col < colCount ; col ++)
     {
       if (board[row][col])
       {
         fill(0, 255, 0);
       }
       else
       {
         fill(0);
       }
       float x = col * cellWidth;
       float y = row * cellHeight;
       rect(x, y, cellWidth - 1, cellHeight - 1);
     }
   }
   updateBoard();
   
   if (keyPressed)
   {
     if (key == 'c')
     {
       clearBoard();
     }
   }
}