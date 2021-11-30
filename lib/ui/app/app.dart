import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/flavor/index.dart';
import 'package:flutter_boilerplate/config/navigation/app_router_observer.dart';
import 'package:flutter_boilerplate/ui/app/root_provider.dart';
import 'package:flutter_boilerplate/ui/navigation/app_auto_router.gr.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RootProvider(
      builder: (context) {
        var withDevicePreview = Flavor.value.withDevicePreview;
        return withDevicePreview ? DevicePreviewApp() : RealApp();
      },
    );
  }
}

class DevicePreviewApp extends StatelessWidget {
  DevicePreviewApp({
    Key? key,
  }) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      builder: (context) {
        var routerObserverRegister = context.read<AppRouterObserverRegister>();

        return MaterialApp.router(
          title: 'Flutter Demo',
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
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
    );
  }
}

class RealApp extends StatelessWidget {
  RealApp({
    Key? key,
  }) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    var routerObserverRegister = context.read<AppRouterObserverRegister>();

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
  }
}
