import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/pages/tab_counter/rx_counter/rx_counter_bloc.dart';
import 'package:flutter_boilerplate/ui/pages/tab_counter/rx_counter/rx_counter_di.dart';
import 'package:rx_notifier/rx_notifier.dart';

class RxCounterPage extends StatelessWidget {
  const RxCounterPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RxCounterDI(
      builder: (context) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RxBuilder(
                builder: (context) {
                  var count1 = RxCounterDI.getCount1(context);
                  return Text('Counter 1: $count1');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  var counter = RxCounterDI.getBloc(context);
                  counter.increase1();
                },
                child: const Text('Increase 1'),
              ),
              RxBuilder(
                builder: (context) {
                  var count2 = RxCounterDI.getCount2(context);
                  return Text('Counter 2: $count2');
                },
              ),
              ElevatedButton(
                onPressed: () {
                  RxCounterBloc counter = RxCounterDI.getBloc(context);
                  counter.increase2();
                },
                child: const Text('Increase 2'),
              ),
            ],
          ),
        );
      },
    );
  }
}
