class Singleton {

  Singleton._privateConstructor();

  static final Singleton _instance = Singleton._privateConstructor();

  factory Singleton() {
    return _instance;
  }
  // static 변수 또는 메서드가 인스턴스에 귀속되는 것이 아닌 클래스에 귀속되는 것.
  // factory - Dart에서 제공해주는 특이한 키워드, 결국 생성자 키워드임. 하지만 기존의 생성자와는 달리 반환값에 있어서 새로운 인스턴스의 생성이 가능하므로 좀 더 유연한 프로그래밍을 가능하게 한다.
}

void main() {
  Singleton s1 = Singleton();
  Singleton s2 = Singleton();
  print(s1==s2);

}