// In dart, each function is an object of class Function

main() {
  showOutput(square(2));
  showOutput(square(2.5));

  print(square.runtimeType); // gives type of function

  var list = ['Apples', 'Mangoes', 'Oranges'];

  list.forEach(printF); // forEach is used for higher order operations

  print('');

  // Anonymous function/nameless function
  // similar to lambda in python or closure in other languages
  list.forEach((item) {
    print(item);
  });
  // works in the same way as above calling

  print(sum(1, 2));
  print(diff(16, num1: 9)); // using name of params while calling
  // can mix named and positional parameters
  // not all named params must be provided

  print(multi(2));
}

// return_type func_name (type params){}
void showOutput(var msg) {
  print(msg);
}

// ARROW FUNCTION (one line function) =>
dynamic square(var num) => num * num;

void printF(item) {
  print(item);
}

// Positional args are n1 and n2
dynamic sum(var n1, var n2) => n1 + n2;

// Named args in a function uses {}
// can mix named and positional args
dynamic diff(num0, {var num1, var num2 = 0}) => num0 - num1 - num2;
// using ?? to prevent a null error in code
// or we could use a default value as var num2=0 in its params and remove ??

dynamic multi(var num1, [var num2]) => num1 * (num2 ?? 0);
// optional positional argument uses []
