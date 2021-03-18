// Conditional Statements

void main() {
  int number = 100;

  if (number % 2 == 0) {
    print('Even');
  } else if (number % 3 == 0) {
    print('Odd');
  } else {
    print('Confused');
  }

  int x = 5;
  switch (x) {
    case 0:
      print('x is 0');
      break;
    case 1:
      print('x is one');
      break;
    default:
      print('x is unkown');
      break;
  }
  ;
}
