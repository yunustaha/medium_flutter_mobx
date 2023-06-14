import 'package:mobx/mobx.dart';

class CounterModel {
  Observable<int> counterData = Observable(0);

  CounterModel() {
    init();
  }

  //Action hem store içerisinde hem de widget içerisinde kullanılabilir.
  late Action incrementCounter = Action((){
      counterData.value++;
  });

  void init() {
    reaction((_) => counterData.value, (_) {
      print('value değişkeninin değeri değiştirildi!!!');
    });
  }
}
