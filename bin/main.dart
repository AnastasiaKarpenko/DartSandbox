main(List<String> arguments) {
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
}
