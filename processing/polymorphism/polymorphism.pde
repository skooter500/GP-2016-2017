void setup()
{
  size(500, 500);
  
  
  // Polymorphism! Changing a from a dog to a cat
  Animal a;
  
  a = new Animal();
  a.speak();
  a = new Dog("Misty");
  a.speak();
  a = new Cat("Topcat");
  a.speak();
}

class Animal
{
  String name;
  
  Animal()
  {
  }
  Animal(String name)
  {
    this.name = name;
  }
  
  void speak() 
  {
    println("I cant speak");
  }
}

class Dog extends Animal
{
  Dog(String name)
  {
    super(name);
  }
  
  void speak()
  {
    println(name + " says woof");
  }
}

class Cat extends Animal
{
  Cat(String name)
  {
    super(name);
  }
  
  void speak()
  {
    println(name + " says meow");
  }
}