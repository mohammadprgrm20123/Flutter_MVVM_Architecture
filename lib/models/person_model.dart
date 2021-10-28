


import 'dart:core';

class Person {


  String name;
  String family;
  String phoneNumber;

  Person({required this.name, required this.family, required this.phoneNumber});

  @override
  String toString() {
    return 'Person{name: $name, family: $family, phoneNumber: $phoneNumber}';
  }
}