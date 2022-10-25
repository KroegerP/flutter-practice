void main() {
  int num1 = 2;
  double num2 = 3.0;
  bool isTrue = true;
  String string2 = '';

  //Cannot change type or be reassigned(?)
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

  namedParams({required int a, int b = 5}) {
    return a - b;
  }

  namedParams(b: 23, a: 10);

  // List inherits its definition from the 'Iterable' type
  List<int> list = [1, 2, 3, 4, 5];

  print(list[0]);
  print(list.sublist(0, 3));

  // Fill a list of a certain size with a certain value
  var list2 = List.filled(50, 'hello');

  list.add(4);
  list.removeLast();
  list.insert(1, 1000);

  for (int n in list) {
    print(n);
  }

  var doubled = list.map((n) => n * 2);

  list.forEach((n) => print(n));

  //Spread syntax
  var combined = [...list, ...doubled];
  combined.forEach(print);

  //Maps are like dicts, key value pairs
  Map<String, dynamic> book = {'title': 'Star Wars', 'pages': 72};

  book['title'];

  book.keys;
  book.values;
  book.values.toList();

  // Can use forEach as well
  for (MapEntry b in book.entries) {
    print('Key ${b.key}, Value ${b.value}');
  }

  Animal animal = Animal(5);
  animal.id;
  Animal.helper();
}

// Need to instantiate this to acutally use code.
class Animal {
  Animal(this.id);

  // late allows us to assign an non-nullable value later
  late final String _size;
  int id;

  void goBig() {
    _size = 'big';
    print(_size);
  }

  // Can call static methods from the class itself without needing
  // to instansiate i.e. Aninmal.helper()
  // Should NOT rely on internal state of any instance
  static helper() {
    print("I'm helping!");
  }
}
