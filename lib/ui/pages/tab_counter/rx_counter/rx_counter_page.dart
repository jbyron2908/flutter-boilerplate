import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/di/di_helper.dart';
import 'package:flutter_boilerplate/domain/repository/counter/counter_repository.dart';
import 'package:provider/provider.dart';
import 'package:rx_notifier/rx_notifier.dart';

class RxCounter {
  RxCounter(this._counterRepository);

  final CounterRepository _counterRepository;

  final count1 = RxNotifier(0);
  final count2 = RxNotifier(0);

  void increase1() {
    count1.value = _counterRepository.increment(count1.value);
  }

  void increase2() {
    count2.value = _counterRepository.increment(count2.value);
  }
}

class RxCounterPage extends StatelessWidget {
  const RxCounterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => RxCounter(context.read()),
      builder: (context, _) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RxBuilder(
              builder: (context) {
                var count1 = DIHelper.get<RxCounter>(context).count1.value;
                return Text('Counter 1: $count1');
              },
            ),
            ElevatedButton(
              onPressed: () {
                var counter = DIHelper.get<RxCounter>(context);
                counter.increase1();
              },
              child: const Text('Increase 1'),
            ),
            RxBuilder(
              builder: (context) {
                var count2 = DIHelper.get<RxCounter>(context).count2.value;
                return Text('Counter 2: $count2');
              },
            ),
            ElevatedButton(
              onPressed: () {
                var counter = context.read<RxCounter>();
                counter.increase2();
              },
              child: const Text('Increase 2'),
            ),
          ],
        ),
      ),
    );
  }
}
