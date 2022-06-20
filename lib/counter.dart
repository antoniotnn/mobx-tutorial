
import 'package:mobx/mobx.dart';

part 'counter.g.dart';

// ignore: library_private_types_in_public_api
class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  /*
    ANTES DO mobx_codegen e build_runner serem importados/utilizados era usado esse código:

    Counter() {
      increment = Action(_increment);
    }

    final Observable _count = Observable(0);

    int get count => _count.value;

    late Action increment;

    void _increment() {
      _count.value++;
    }

  */

}