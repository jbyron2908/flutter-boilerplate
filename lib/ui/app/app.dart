import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/navigation/app_router_observer.dart';
import 'package:flutter_boilerplate/ui/app/root_provider.dart';
import 'package:flutter_boilerplate/ui/navigation/app_auto_router.gr.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      child: Builder(
        builder: (context) {
          var routerObserverRegister =
              context.read<AppRouterObserverRegister>();

          return MaterialApp.router(
            title: 'Flutter Demo',
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: appRouter.delegate(
              navigatorObservers: () => [
                AppRouterObserver(
                  appRouter,
                  routerObserverRegister.listener,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
