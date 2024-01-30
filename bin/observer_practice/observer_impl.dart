import 'observer_interface.dart';
import 'observer_pattern.dart';

class ObserverImpl implements Observer {

  String _observerState = "";

  @override
  void update(String newState) {
    _observerState = newState;
    print("옵저버 상태 업데이트 : $_observerState");
  }
}

void main() {
  Subject subject = Subject();

  var observer1 = ObserverImpl();
  var observer2 = ObserverImpl();

  subject.addObserver(observer1);
  subject.addObserver(observer2);

  subject.setState("새로운 상태1");

  subject.setState("새로운 상태2");

}