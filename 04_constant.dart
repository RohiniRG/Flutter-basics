main() {
  // Constant Variables
  const aConstNum = 10;
  const aConstBool = true;
  const aConstString = "constant string.";

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);

  // null value
  var num; //if we don't assign a value it implicitly takes null.
  print(num);

  var num1 = null; // in this we are explicitly mentioning null.
  print(num1);
}
