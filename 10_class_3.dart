// INHERITANCE

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  @override // when override a method for safety we write this so that
  // anyone reading the program can know.
  void showOutput() {
    super.showOutput();
    print(price);
  }
}

void main() {
  var c = Car('Accord', 2019, 180000);
  c.showOutput();
}
