## We Go Together Sprint1 패턴 학습 with Dart

### 1. builder practice

#### What is Builder Pattern ? 
  -> 빌더 패턴은 복잡한 객ㅍ체들을 단계별로 생성할 수 있도록 하는 생성 디자인 패턴, 이 패턴을 사용하면 같은 제작 코드를 사용하여 객체의 다양한 유형들과 표현을 제작할 수 있다.

  #### Builder Pattern의 장점
   1. 필요한 데이터만 설정할 수 있다.
2. 유연성을 확보할 수 있다.
3. 변경 가능성을 최소한다.

---------

  1. 필수 매개변수를 받는 생성자 : 필수로 받아야 하는 매개변수를 생성자에게서 받는다.
  2. 선택적 매개변수 설정 메서드들 : 선택적으로 설정할 수 있는 매개변수들을 각각 메서드로 설정하고 이 메서드들은 빌더 객체 자신을 반환하도록 한다.
3. 빌더를 사용하여 객체를 생성한다 : build 메서드를 호출해 실제 객체를 생성한다. 

### Flutter에서의 빌더 패턴 활
Container, TextStyle 혹은 여러 위젯들의 속성들을 설정할때 쓰임.

### 2. factory practice

#### What is Factory Pattern ?
  -> 객체 생성 로직을 클라이언트로부터 분리시키고, 객체 생성을 담당하는 별도의 팩토리 클래스에 위임해 객체의 생성을 캡슐화 하는 디자인 패턴.


### 3. observer practice

#### What is Observer Pattern ?
  -> 옵저버 패턴은 객체 간의 일대다 종속 관계에서 하나의 객체의 상태가 변경될 때, 이를 종속 객체들에게 알리고 자동으로 내용이 갱신되도록 하는 디자인 패턴 중 하나이다. 이는 주로 분산 이벤트 처리 시스템이나 MVC(Model-View-Controller) 아키텍처에서 사용된다.
  
#### ObserverImpl class
 - Observer : 인터페이스를 구현하는 구체적인 옵저버 클래스
 - update : 메서드를 오버라이딩하여 주체의 상체 업데이트를 처리. 

#### Subject class
 - 옵저버들을 등록하고, 상태가 변경되었을때 옵저버들에게 알리는 주체 클래스
 - addObserver를 통해 옵저버를 등록하고 setState 메서드를 통해 주체의 상태를 변경
 - notifyObservers 메서드를 통해 등록된 모든 옵저버들에게 상태 업데이트를 알림

### Flutter에서의 옵저버

Provider등 상태관리 라이브러리 혹은 내장 setState등 이런 상태관리 도구들은 옵저버 패턴을 통해 구현.

상태가 변경될때마다 상태를 사용하는 모든 위젯들에게 상태 변경이 알려지고, 화면이 다시 그려짐.

### 4. singleton practice

#### What is Singleton Pattern ?
   -> 싱글턴 패턴은 어떤 클래스가 최대 한 번의 인스턴스만을 가지도록 보장혀며, 이 인스턴스에 대한 전역적인 접근점을 제공하는 디자인패턴이다.
이는 어플리케이션 내에서 공유된 리소스에 대한 중앙 집중적인 제어를 제공하거나, 공통된 로그, 설정, 캐시 등의 인스턴스를 하나로 유지하고 싶을 때 사요된다.

#### Pros of Singleton Pattern
 1. 유일성 보장 : 싱글턴 패턴을 사용하면 어플리케이션 내에서 하나의 인스턴스만 존재하도록 보장할 수 있다.
2. 전역적인 접근점: 인스턴스에 대한 전역적인 접근을 제공하여 어디서든 해당 인스턴스에 접근할 수 있다.
3. 리소스 공유 : 공통된 리소스를 중앙에서 관리하고 공유할 수 있다.

### Flutter에서의 싱글턴
 상태관리, 서비스 호출, 설정 값 관리등에서 주로 사용. 
 ex- 1.Provider에서 ChangeNotifierProvider는 싱글턴 패턴을 사용하여 상태 관리를 구현함.
        - Provider class의 인스턴스를 생성하고 해당 인스턴스를 위젯 트리에 공유함으로써 여러 위젯들이 동일한 상태를 공유하게 보장함.
     2. SharedPreferences - 앱의 설정 값을 저장하기 위해 싱글턴 패턴 활용