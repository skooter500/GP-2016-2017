void setup()
{
  // < 40 FAIL
  // 40 - 49 - PASS
  // 50 - 59 - 2.2
  // 60 - 69 - 2.1
  // 70 - First
  // Anything else is invalid!
  
}


void draw()
{
  int score = (int) random(-50, 150);
  print(score + " ");
  if (score < 0 || score > 100)
  {
    println("Invalid");
  }
  else if (score < 40)
  {
    println("Fail");
  }
  else if (score < 50)
  {
   println("Pass"); 
  }
  else if (score < 60)
  {
    println("2.2");
  }
  else if (score < 70)
  {
    println("2.1");
  }
  else
  {
    println("First");
  }
}