// Inline comment

/* Block 
  comment */

/// Documentation

/* Two types of languages:object
1. Strongly typed: type of variable is known at compile time (C++, Java, Swift)
2. Dynamically typed: type of variable is known at run time (Python, Ruby, JS)

BASIC DATA TYPES IN DART: 
fundamental(int, double, string, bool), dynamic*/

// import 'dart:io';

main() {
  int amount1 = 100;
  var amount2 = 200;
  print('Amount 1: $amount1 | Amount 2: $amount2 \n');

  double damount1 = 10.01;
  var damount2 = 10.99;
  print('Amount 1: $damount1 | Amount 2: $damount2 \n');

  String name1 = 'Rohini';
  var name2 = 'Akhil';
  print('Name 1: $name1 | Name 2: $name2 \n');

  bool q1 = true;
  var q2 = false;
  print('1: $q1 | 2: $q2 \n');

  dynamic weakVar = 100; // dynamic keyword assigns value at runtime
  print('Weak variable: $weakVar \n');

  weakVar = 'Dart';
  print('Weak variable: $weakVar \n');

  // DART IS AN OBJECT ORIENTED PROGRAMMING LANGUAGE
  // Everything is an object including 'null' type
  weakVar = null;
  print('Weak variable: $weakVar \n');
}
