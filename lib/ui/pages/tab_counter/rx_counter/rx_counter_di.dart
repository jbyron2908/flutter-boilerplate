import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/di/di_helper.dart';
import 'package:flutter_boilerplate/ui/pages/tab_counter/rx_counter/rx_counter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rx_notifier/rx_notifier.dart';

class RxCounterDI extends StatelessWidget {
  const RxCounterDI({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final Widget Function(BuildContext context) builder;

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => RxCounterBloc(DIHelper.get(context)),
      builder: (context, child) => builder(context),
    );
  }

  static RxCounterBloc getBloc(BuildContext context) =>
      DIHelper.get<RxCounterBloc>(context);

  static RxNotifier<int> getCount1(BuildContext context) =>
      DIHelper.get<RxCounterBloc>(context).count1;

  static RxNotifier<int> getCount2(BuildContext context) =>
      DIHelper.get<RxCounterBloc>(context).count2;
}
