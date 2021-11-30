import 'package:flutter_boilerplate/domain/repository/counter/counter_repository.dart';
import 'package:rx_notifier/rx_notifier.dart';

class RxCounterBloc {
  RxCounterBloc(this._counterRepository);

  final CounterRepository _counterRepository;

  final RxNotifier<int> count1 = RxNotifier(0);
  final RxNotifier<int> count2 = RxNotifier(0);

  void increase1() {
    count1.value = _counterRepository.increment(count1.value);
  }

  void increase2() {
    count2.value = _counterRepository.increment(count2.value);
  }
}
