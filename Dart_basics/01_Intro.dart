// COMMENTS

// Dart is a static type(once you define the type of variable, you cannot change)
// programming language

// Dart supports 2 type of compilations:
// AOT: ahead of time (entire version with some optimization)
// JIT: just in time (on the fly)

// dart collections or core functionalities are defined in a package
// dart:core
// import 'dart:core';
// imported automatically in every dart program

import 'dart:io';

main() {
  // no return type in function definition = void

  stdout.writeln('Enter you first name: ');
  var firstName = stdin.readLineSync(); // var = variable keyword
  // dart compiler automatically knows this is a string = Type Inference

  stdout.writeln('Enter you last name: ');
  String? lastName = stdin.readLineSync();
  // already assigned string, so cannot reassign
  // String lastName = 2; -> ERROR = Static Type

  print('My name is $firstName $lastName'); // $ = String Interpolation
}
