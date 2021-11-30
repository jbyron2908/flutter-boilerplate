import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/navigation/app_navigator.dart';
import 'package:flutter_boilerplate/ui/navigation/app_auto_router.gr.dart';

class AppRouter {
  AppRouter._();

  static Future<bool> navigateBack(BuildContext context, {Object? result}) {
    return AppNavigator.pop(context, result: result);
  }

  static Future<void> replaceToMain(BuildContext context) {
    return AppNavigator.replaceTo(
      context,
      route: const MainRouter(),
    );
  }

  static Future<void> pushToCounterHome(BuildContext context) {
    return AppNavigator.pushTo(
      context,
      route: const RxCounterRoute(),
    );
  }
}
