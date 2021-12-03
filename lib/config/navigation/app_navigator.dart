import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/presentation/widget/picker_modal/multi_picker_modal.dart';
import 'package:flutter_boilerplate/presentation/widget/picker_modal/picker_modal.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AppNavigator {
  static Future<T?> pushTo<T>(
    BuildContext context, {
    required PageRouteInfo<dynamic> route,
  }) {
    return context.router.push<T>(route);
  }

  static Future<T?> replaceTo<T>(
    BuildContext context, {
    required PageRouteInfo<dynamic> route,
  }) {
    return context.router.replace<T>(route);
  }

  static Future<bool> pop(
    BuildContext context, {
    Object? result,
  }) {
    return context.router.pop(result);
  }

  static Future<T?> showPickerBottomSheet<T>({
    required BuildContext context,
    required List<T> Function(BuildContext) buildList,
    required Widget Function(BuildContext, T) buildItem,
  }) {
    return showMaterialModalBottomSheet<T>(
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return PickerWidget(
          buildList: buildList,
          buildItem: buildItem,
        );
      },
    );
  }

  Future<List<T>?> showMultiPickerBottomSheet<T>({
    required BuildContext context,
    required List<PickerItem<T>> Function(BuildContext) buildList,
    required Widget Function(BuildContext, T) buildItem,
  }) {
    return showMaterialModalBottomSheet<List<T>>(
      context: context,
      useRootNavigator: true,
      builder: (context) {
        return MultiPickerWidget(
          buildList: buildList,
          buildItem: buildItem,
        );
      },
    );
  }
}
