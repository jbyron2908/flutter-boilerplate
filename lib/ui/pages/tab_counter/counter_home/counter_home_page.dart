import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/navigation/app_router.dart';

class CounterHomePage extends StatelessWidget {
  const CounterHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Home"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Go to RxCounter"),
              onPressed: () {
                AppRouter.pushToCounterHome(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
