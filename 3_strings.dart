main() {
  var s1 = 'Single quotes work well for string literals';
  var s2 = "Double quotes works just as well";
  var s3 = 'It\'s easy to use string deliminator'; // \ adds escape sequences
  var s4 = "It's even easier to use other deliminator";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  // RAW String
  var s = r'In a RAW string, not even a \n gets special treatment.';
  // doesn't consider escape sequences
  print("\n$s");

  // converting an int to string
  var age = 19;
  var str = "My age is $age";
  print("\n$str");

  // Multiline Strings
  var s5 = '''
You can create multiline strings, 
like this one.''';

  var s6 = """This is also
a multiline string.""";

  print("\n");
  print(s5);
  print(s6);

  // string -> int
  var one = int.parse('1'); // converts string to int or mentioned type
  assert(one == 1); // If not True it will throw an error
  // uncomment below to see

  // var ones = int.parse('str');
  // assert(ones == 1);

  // string -> double
  var onePointone = double.parse('1.1');
  assert(onePointone == 1.1);

  // int -> string
  var oneAsString = 1.toString(); // converts given value to string
  assert(oneAsString == '1');

  // double -> string
  var piAsString = 3.14159.toStringAsFixed(3); // precision of decimal given
  assert(piAsString == '3.141');
}
