import 'package:flutter_boilerplate/domain/repository/counter/counter_repository.dart';
import 'package:rx_notifier/rx_notifier.dart';

class RxCounterBloc {
  RxCounterBloc(this._counterRepository);

  final CounterRepository _counterRepository;

  final RxNotifier<int> _count1 = RxNotifier(0);
  int get count1 => _count1.value;

  final RxNotifier<int> _count2 = RxNotifier(0);
  int get count2 => _count2.value;

  void increase1() {
    _count1.value = _counterRepository.increment(_count1.value);
  }

  void increase2() {
    _count2.value = _counterRepository.increment(_count2.value);
  }
}
