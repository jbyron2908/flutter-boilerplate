import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/ui/navigation/app_auto_router.gr.dart';
import 'package:flutter_boilerplate/ui/navigation/app_navigation.dart';

class AppRouter {
  AppRouter._();

  static Future<bool> navigateBack(BuildContext context, {Object? result}) {
    return AppNavigation.pop(context, result: result);
  }

  static Future<void> replaceToMain(BuildContext context) {
    return AppNavigation.replaceTo(
      context,
      route: const MainRouter(),
    );
  }
}
