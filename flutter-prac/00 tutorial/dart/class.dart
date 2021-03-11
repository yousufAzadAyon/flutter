void main(List<String> args) {
  var person = Person(name: 'yousuf', age: 24, height: 1.8);
  print(person.describe());

}

class Person{
  Person(
    {
      this.name,
      this.age,
      this.height
    }
  );
  
  final name;
  final age;
  final height;

  String describe()=>'hello my name is $name, im $age, and height is $height';

}

