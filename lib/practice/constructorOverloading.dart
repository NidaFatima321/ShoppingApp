import 'dart:math';

class Employee {
  final String name;
  final int age;
  final double salary;
  final int experience;
  final String designation;
//image.asset is a named constructor
// we do not have default constructor when we have named constrcutor, and we make attributes nullable so we can handle them at getter
  Employee(String empId, this.name, this.age, this.salary, this.experience,
      this.designation) {}
  Employee.register(int empId, this.name, this.age, this.salary,
      this.experience, this.designation);

  String get getName => name;
  int get getAge => age;
  double get getSal => salary;
  int get getExp => experience;
  String get getDesignation => designation;
}
