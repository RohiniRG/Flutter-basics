class X {
  // Remember if variables are assigned once they cannot be changed.
  final name; // changing this and defining its datatype is only
  // possible at the run time.
  static const int age = 10; // and this will be at compile time and it is a
  // class property not an object property.

  X(this.name);
}

main() {
  var xoxo = X('Akhil');
  print(xoxo.name);

  // NOTE here we didnt use object name as it was class property because of the
  // word static.
  //print(xoxo.age) it will produce an error.
  print(X.age);
}
