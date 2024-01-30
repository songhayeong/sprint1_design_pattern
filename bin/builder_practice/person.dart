// person.dart

class Person {
  final String firstName;
  final String lastName;
  final int? age;
  final String? address;

  // private 생성자
  Person({required this.firstName, required this.lastName, this.age, this.address});

  @override
  String toString() {
    return 'Person{firstName: $firstName, lastName: $lastName, age: $age, address: $address}';
  }
}
