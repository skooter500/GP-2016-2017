void setup()
{
  size(500, 500);
  cellWidth = width / colCount;
  cellHeight = height / rowCount;
  
  board[0][2] = true; // Row, Col
  board[1][1] = true;
  board[1][2] = true;
  board[1][3] = true;
  
}

int rowCount = 50,colCount = 50;
float cellWidth, cellHeight;
boolean[][] board = new boolean[rowCount][colCount];

// Finish this off!!
int countLiveCellsSurrounding(int row, int col)
{
  int count = 0;
  
  if (row > 0 && col > 0 && board[row - 1][col -1])
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
}