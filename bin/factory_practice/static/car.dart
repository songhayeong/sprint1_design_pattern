import '../no_factory/carImpl.dart';

abstract class Car {
  void getPrice();

  static carFactory(CarType type) {
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
}

void main() {
  Car.carFactory(CarType.avante);
}