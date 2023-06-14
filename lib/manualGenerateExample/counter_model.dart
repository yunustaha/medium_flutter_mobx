import 'package:mobx/mobx.dart';

class CounterModel {
  Observable<int> counterData = Observable(0);

  CounterModel() {
    init();
  }

  //Action hem store içerisinde hem de widget içerisinde kullanılabilir. 
  //Ben bu projede widget içerisinde Action'u tetikledim fakat örnek olması için bu kullanımı da buraya bırakıyorum.
  //late Action incrementCounter = Action((){
  //    counterData.value++;
  //});

  void init() {
    reaction((_) => counterData.value, (_) {
      print('value değişkeninin değeri değiştirildi!!!');
    });
  }
}
