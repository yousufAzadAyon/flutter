
void main() {
  var person = Person(name: 'yousuf', age: 24, height: 1.8);
  var employee = Employee(salary: 1000000, taxCode: 'exrt44re');
  print(person.describe());
  print(employee.sayName());


}

class Person{
  Person(
    {
      this.name,
      this.age,
      this.height
    }
  );
  
  var name;
  var age;
  var height;

  String sayName()=>'hello my name is $name';
  String describe()=>'im $age, and height is $height';

}

class Employee extends Person{
  Employee(
    {
      var name,
      var age,
      var height,
      this.taxCode,
      this.salary
    }
  )
  : super(name: name, age: age, height: height);
  var taxCode;
  var salary;


}