import 'car.dart';

enum CarType {genesis, sonata, avante}

class Genesis implements Car {

  final int price = 5000;

  @override
  void getPrice() {
    print("Price : $price");
  }

}

class Sonata implements Car {

  final int price = 3000;

  @override
  void getPrice() {
    print("Price : $price");
  }
}

class Avante implements Car {
  final int price = 2000;

  @override
  void getPrice() {
    print("Price : $price");
  }
}

void main() {
  CarType type = CarType.avante;

  switch(type) {
    case CarType.genesis:
      Genesis().getPrice();
      break;

    case CarType.sonata:
      Sonata().getPrice();
      break;

    case CarType.avante:
      Avante().getPrice();
      break;
  }
}