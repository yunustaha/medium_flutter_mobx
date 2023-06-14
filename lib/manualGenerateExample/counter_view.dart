import 'package:flutter/material.dart' hide Action;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'counter_model.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  //Store'umuzdan nesne oluşturduk.
  final CounterModel counterStore = CounterModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('MobX Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            //Değişikliklerin widgetlara yansıması için ilgili widgetlerı Observer widgetı ile kaplamalıyız.
            Observer(
              builder: (_) => Text(
                '${counterStore.counterData.value}',
                style: const TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Butona tıklandığında counterData değişkeninin değerinin artması için onPressed içerisine increment action'unu tanımladık.
        onPressed: Action(() {
          counterStore.counterData.value++;
        }),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
