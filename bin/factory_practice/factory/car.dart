enum CarType {genesis, sonata, avante;}

// 팩토리 패턴은 객체 생성을 공장 (Factory) 클래스로 캡슐화 처리해 대신 생성하게 하는 생성 디자인 패턴이다.

// 즉 클라이언트에서 직접 연산자를 통해 객체를 생성하는 것이 아닌 제품 객체들을 도맡아 생성하는 공장 클래스를 만들고, 이를 상속하는 서브 공장 클래스의 메서드에서 여러가지 제품 객체 생성을 각각 책임지는것.


abstract class Car {
  void getPrice();

  factory Car(CarType type) {
    switch (type) {
      case CarType.genesis:
        return Genesis();
      case CarType.sonata:
        return Sonata();
      case CarType.avante:
        return Avante();
    }
  }
}

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
  Car(CarType.sonata).getPrice();
}