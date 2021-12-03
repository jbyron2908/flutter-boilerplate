import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/flavor/index.dart';
import 'package:flutter_boilerplate/presentation/app/app.dart';

void main() {
  Flavor.instance.setupFlavor(const String.fromEnvironment('FLAVOR'));
  runApp(MyApp());
}
