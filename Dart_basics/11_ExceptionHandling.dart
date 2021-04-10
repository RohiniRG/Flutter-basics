// To check if runtime problem has occured or not

// Throw, try, catch, finally keywords are used

int GreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater than 0'); // goes to catch
  }
  return val;
}

void VerifyVal(var val) {
  var valueVerifying;

  try {
    valueVerifying = GreaterThanZero(val);
    // if we want specific exception,
    // we can use 'on Exception_name' after try block
  } catch (e) {
    print(e);
  } finally {
    if (valueVerifying == null) {
      print('Value invalid');
    } else {
      print('Value verified: $valueVerifying');
    }
  }
}

main() {
  VerifyVal(0);
}
