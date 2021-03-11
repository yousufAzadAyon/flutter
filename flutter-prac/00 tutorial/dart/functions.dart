void main(List<String> args) {
  var name = 'ayon';
  var age = 24;
  var height = 1.8;

  var person1 = describe(name, age);
  var person2 = describe('yousuf', 25, height);
  sayName('azad');
  print(person1);
  print(person2);
  print(sayName);
}


String describe(String name, int age, [double height = 0.0]){
  return 'hello my name is $name, im $age years old and my height is $height';

}

void sayName(String name) => print('hello my name is $name');