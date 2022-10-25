void main() {
  int num1 = 2;
  double num2 = 3.0;
  bool isTrue = true;
  String string2 = '';

  //Cannot change type
  final String string1 = 'Hello';

  //Const creates immutable compile time constant (Will never change value)
  const int age = 75;

  //Variables cannot be null by default
  int? age2;

  // Must ensure that it will not be null here
  // ! allows for nullable value to be assigned to non-nullable var
  int age3 = age2!;

  if (string1.isEmpty) string2 = 'Testing2';

  // Tool for debugging
  assert(string2.isNotEmpty);

  //double
  print((num1 + num2).runtimeType);
}

class Animal {
  // late allows us to assign an non-nullable value later
  late final String _size;

  void goBig() {
    _size = 'big';
    print(_size);
  }
}
