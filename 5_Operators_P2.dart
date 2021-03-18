// NULL Aware Operator
// (?.), (??), (??=)

class Num {
  var num = 10;
}

main() {
  var n = Num();
  var number;

  // if (n != null) {
  //   number = n.num;
  // }

  // Alternative for the above code
  number = n?.num ?? 0;

  // This assigns default value if the variable which we are checking
  // from ?. is null.
  number = n?.num ?? 0;

  print(number);

  // ??= is a inplace changing null aware operator
  // it chnages the value of the variable only
  // if the variable is null then it assigns a default value to it
  var nums;
  print(nums ??= 100);
  print(nums);

  // Ternary Operators just like C++.
  int num2 = 100;
  var result2 = num2 % 2 == 0 ? 'Even' : 'Odd';
  print(result2);

  // Type Test 'is' KEYWORD
  int num3 = 1;
  if (num3 is int) {
    print('integer');
  }
}
