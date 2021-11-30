import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DIHelper {
  DIHelper._();

  static T get<T>(BuildContext context) {
    return context.read<T>();
  }

  static T watch<T>(BuildContext context) {
    return context.watch<T>();
  }

  static R select<T, R>(BuildContext context, R Function(T) selector) {
    return context.select<T, R>(selector);
  }
}
