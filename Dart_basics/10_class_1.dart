// CLASS

class Person {
  var name;
  var age;

  // Default Constructor

  // Person(String name, [int age = 18]) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Alternative for above default constructor
  Person(this.name, [this.age = 18]);

  // Named Constructor
  Person.guest() {
    name = 'Guest';
    age = 18;
  }

  void showOuptut() {
    print(name);
    print(age);
  }
}

void main() {
  Person person1 = Person('Akhil');
  person1.showOuptut();

  var person2 = Person('Rooo', 35);
  person2.showOuptut();

  var person3 = Person.guest();
  person3.showOuptut();
}
