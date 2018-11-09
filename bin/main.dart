import 'dart:io';
import 'dart:async';
import 'dart:collection'; //to import queue

enum colors { red, green, blue }

main(List<String> arguments) {
  //Enums
  print(colors.values);
  print(colors.red);

  //Booleans

  bool isOn; //this is a variable, it is gonna change over time
  print('isOn = ${isOn}');

  isOn = true;
  print('isOn = ${isOn}');

  isOn = false;
  print('isOn = ${isOn}');

  isOn = true;
  print('isOn is a  ${isOn.runtimeType}');

  //Numbers
  num age = 34;

  //Int
  int people = 6;

  //Double
  double temp = 32.06;

  //Parse Int

  int test = int.parse('12');
  print(test);

  int err = int.parse('12.09', onError: (source) => 0);
  print('err = ${err}');

  //math
  int dogyears = 7;
  int dogage = age * dogyears;
  print('Your age in dog years is: ${dogage}');

  // Strings
  String hello = 'hello world';

  String name = 'Anastasiia Karpenko';
  print(name);

  //get a substring

  String firstname = name.substring(0, 10);
  print('firstname = ${firstname}');

  //get the index of a string
  int index = name.indexOf(' ');
  String lastname = name.substring(index).trim();
  print('lastname = ${lastname}');

  //Length
  print(name.length);

  //Contains
  print(name.contains('Ana'));

  //Create a list
  List parts = name.split(' ');
  print(parts);
  print(parts[0]);
  print(parts[1]);

  //constant variables
  String hello2 = 'Hello';
  const String world = 'World';

  print(hello2 + ' ' + world);

  //Input and output example

//  stdout.write('What is your name?\r\n');
//
//  String newName = stdin.readLineSync();
//
//  newName.isEmpty ? stderr.write('Name is empty') : stdout.write('Hello ${name}\r\n');

  //Lists

  List testList = [1, 2, 3, 4];
  print(testList);
  print(testList[0]);
  print('length is : ${testList.length}');

  List things = new List(); //can put anything we want in this list
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things);

  List<int> numbers = new List<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  // cannot add smth else than int here : numbers.add('cats');

  //Sets (are unordered and do not contain duplicates)

  Set<int> numbers2 = new Set<int>();
  numbers2.add(1);
  numbers2.add(2);
  numbers2.add(1); //added twice
  print(numbers2); // does not print the last int cause its added twice

  //Queues (ordered, no index, add and remove from the start and end)
  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  items.removeFirst();
  items.removeLast();
  print(items);

  //Maps = key value pair
  Map family = {
    'dad': 'Sergey',
    'mom': 'Marina',
    'son': 'Vasiliy',
    'daughter': 'Anastasiia'
  };
  print('Keys are: ${family.keys}');
  print('Values are: ${family.values}');
  print('Dad is ${family['dad']}');
  print('Mom is ${family['mom']}');
  print('Son is ${family['son']}');
  print('Daughter is ${family['daughter']}');

  Map<String, String> myFamily = new Map<String, String>();
  myFamily.putIfAbsent('dad', () => 'Sergey');
  print('Dad is ${myFamily['dad']}');
  print('Mom is ${myFamily['mom']}');

  //Assertion

  print('starting');
  int age2 = 43;
  assert(age2 == 43);
  print('finished');

  //if else
  int age3 = 42;
  if (age3 == 43) print('You are 43 years old');
  if (age3 != 43) print('you are not 43 years old');
}
