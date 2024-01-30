
import 'observer_interface.dart';

class Subject {

  // 옵저버들을 저장하기 위한 리스트
  List<Observer> _observers = [];

  String _state = "";

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void setState(String newState) {
    _state = newState;
    notifyObservers();
  }

  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(_state);
    }
  }
}