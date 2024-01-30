// person_builder.dart
import 'person.dart';

class PersonBuilder {
  late String _firstName;
  late String _lastName;
  int? _age;
  String? _address;

  // 필수 매개변수를 받는 생성자
  PersonBuilder(String firstName, String lastName) {
    _firstName = firstName;
    _lastName = lastName;
  }

  // 선택적 매개변수 설정 메서드들
  PersonBuilder age(int age) {
    _age = age;
    return this;
  }

  PersonBuilder address(String address) {
    _address = address;
    return this;
  }

  // 빌더를 사용하여 Person 객체 생성
  Person build() {
    // private 생성자에 직접 접근
    return Person(
      firstName: _firstName,
      lastName: _lastName,
      age: _age,
      address: _address,
    );
  }
}

void main() {
  // 빌더를 사용하여 Person 객체 생성
  Person person = PersonBuilder("John", "Doe")
      .age(30)
      .address("123 Main Street")
      .build();

  print(person);
}
