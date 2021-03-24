// COLLECTIONS

void main() {
  List name1 = ['Akhil', 'Bhalerao']; // same type of data
  var name2 = ['Rohini', 'Rao', 1, 100.234]; // different data types

  var n = name1.length;
  var m = name2.length;

  print('Length of name1 : $n');
  print('Length of name2 : $m');

  for (var n in name1) {
    print(n);
  }

  print("");
  for (var i = 0; i < name2.length; i++) {
    print(name2[i]);
  }

  // Statically typed name string
  // if we try to add other than string it will show an error.
  List<String> names = ['Akhil', 'Bhalerao'];
  print(names);
  // See we can update it as in python and C++.
  names[1] = 'Rao';
  print(names);

  // By adding a const keyword we are making it constant
  // now we no longer can update it and if we try to update it
  // then error is thrown.
  var name3 = const ['Rohini', 'Rao'];
  // name3[1] = 'Bhalerao';    // uncomment to see error
  print(name3);

  var name4 = ['Jack', 'Jill'];

  // We are cloning name4 into name5 so updates in name4 will not reflect
  // in name5 // spread operator
  var name5 = [...name4];

  // Directly copying name4 into name6 // changes will affect
  var name6 = name4;

  // and now if we update name4
  name4[1] = 'Mill';

  print(name4); // [Jack, Mill]
  print(name5); // [Jack, Jill]
  print(name6); // [Jack, Mill]

  print("");
  // --------------------------------------------------------------------
  // SET
  var AM = {'f', 'o', 'f', 'o'};
  print(AM);

  // define SET
  var halogens = {}; // its type is going to be LinkedHashMap<dynamic, dynamic>
  // type as we didnt define it as a SET

  // It's type is going to be LinkedHashSet<String> as we define it
  var halogens_2 = <String>{};

  // It's type is going to be LinkedHashSet <dynamic> type as
  // defined it using SET keyword
  Set halogens_3 = {};

  print(halogens.runtimeType);
  print(halogens_2.runtimeType);
  print(halogens_3.runtimeType);

  print("");
  // ----------------------------------------------------------------------
  // MAP
  // same like python dictionary

  // Definition
  var map = Map();
  print(map);

  Map akhil = {'akhil': 'Bhalerao'};
  print(akhil['akhil']);
}
