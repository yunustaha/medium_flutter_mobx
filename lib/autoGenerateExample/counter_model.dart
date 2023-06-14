import 'package:mobx/mobx.dart';
part 'counter_model.g.dart';

class CounterModel = _CounterModelBase with _$CounterModel;

abstract class _CounterModelBase with Store {
  
  _CounterModelBase() {
    init();
  }
  void init() {
    //value değişkeninin değeri her değiştiğinde gönderidiğimiz fonksiyon çalışacak.
    reaction((_) => value, (_) {
      print('value değişkeninin değeri değiştirildi!!!');
    });
  }

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}