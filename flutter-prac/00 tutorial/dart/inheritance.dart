import 'dart:ffi';

void main(List<String> args) {
  var person = Person(name: 'yousuf', age: 24, height: 1.8);
  var employee = Employee(salary: 1000000, taxCode: 'exrt44re');
  print(employee.salary);


}

class Person{
  Person(
    {
      this.name,
      this.age,
      this.height
    }
  );
  
  final String? name;
  final int? age;
  final double? height;
  String sayName()=>'hello my name is $name';
  String describe()=>'im $age, and height is $height';

}

class Employee extends Person{
  Employee(
    {
      this.taxCode,
      this.salary
    }
  );
  var taxCode;
  var salary;


}