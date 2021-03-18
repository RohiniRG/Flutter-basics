// 5 types of loops in Dart

main() {
  // 1. Standard for loop
  for (var i = 1; i <= 10; ++i) {
    if (i > 5) {
      print('Breaking..');
      break; // breaks/terminate the loop
    }

    if (i % 2 == 0) {
      print('Continuing..');
      continue;
    }

    print('std for: $i');
  }
  print('\n');

  var numbers = [1, 2, 3];

  for (var i = 0; i < numbers.length; ++i) {
    print(numbers[i]);
  }
  print('\n');

  // 2. For-in loop
  for (var n in numbers) {
    print('for-in: $n');
  }
  print('\n');

  //3. forEach loop = higher order function
  numbers.forEach((n) => print('forEach: $n')); // => arrow operator
  // this is also known as arrow function
  // basically behaves like the belo printNum function
  print('\n');

  //4. While loop
  int num = 5;
  while (num > 0) {
    print('while: $num');
    num -= 1;
  }
  print('\n');

  //5. Do-While loop
  int no = 5;
  do {
    print('do-while: $no');
    no -= 1;
  } while (no > 0);
}

void printNum(num) {
  print('similar to forEach: $num');
}
