void setup()
{
  size(500, 500);
  
  // Array elements can also be assigned like this
  
  // Print values out of the array
  println(ages[0]);
  for(int i = 0 ; i < ages.length ; i ++)
  {
    println(names[i] + " is " + ages[i] + " years old");
  }
  // For each loop!
  for(float age:ages)
  {
    println(age);
  }
  // Calculate the average age..
  float total = 0;  
  for(int i = 0 ; i < ages.length ; i ++)
  {
    total += ages[i];
  }
  float average = total / ages.length;
  println(average);
  
  for (int i = 0 ; i < ages.length ; i ++)
  {
    if (ages[i] > average)
    {
      println(names[i]);
    }
  }
  
  for (int i = names.length - 1; i >= 0 ; i --)
  {
    println(names[i]);
  }
  
  // Print the age and the name of 
  // the oldest person
  float oldestAge = -1;
  String oldestName = "";
  
  for(int i = 0 ; i < ages.length ; i ++)
  {
    if (ages[i] > oldestAge)
    {
      oldestAge = ages[i];
      oldestName = names[i];
    }
  }
  println(oldestName + " age " + oldestAge
    + " is the oldest");
    
    
  float youngestAge = Float.MAX_VALUE;
  String youngestName = "";
  
  for (int i = 0 ; i < ages.length ; i ++)
  {
    if (ages[i] < youngestAge)
    {
      youngestAge = ages[i];
      youngestName = names[i];
    }
  }
  
  float barWidth = width / (float) ages.length;
  float scaleFactor = height / oldestAge;
  for (int i = 0 ; i < ages.length ; i ++)
  {
    noStroke();
    fill(random(100, 255), random(100, 255), random(100, 255));
    float x = i * barWidth;
    rect(x, height, barWidth, - ages[i] * scaleFactor);
  }
  
}

float[] ages = {18, 29, 27, 18, 19, 28}; 
String[] names = {"Eoin", "Max", "Mark", "Sean", "Amber", "Bryan"};

float[] ages1 = new float[5];

void draw()
{
}