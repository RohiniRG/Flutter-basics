// Importing std i/o library for input and output
import 'dart:io';

// Inline comment

/* Block comment
*/
/// Documentation
main() {
  // print("Hello World!");

  // var firstName = "Akhil";
  // String lastName = "Bhalerao";

  // print(firstName + " " + lastName);

  stdout.writeln("What is your Name: ?");
  String? name = stdin.readLineSync();
  print("My name is $name");
}
