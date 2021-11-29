import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/domain/repository/counter/counter_repository.dart';
import 'package:flutter_boilerplate/ui/navigation/app_router_observer.dart';
import 'package:flutter_boilerplate/ui/theme/app_theme.dart';
import 'package:provider/provider.dart';

class AppController extends StatelessWidget {
  const AppController({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppThemeProvider>(
          create: (context) => AppThemeProvider(),
        ),
        Provider(
          create: (context) => AppRouterObserverRegister(),
        ),
        Provider(
          create: (context) => CounterRepository(),
        ),
      ],
      builder: (context, _) {
        return child;
      },
    );
  }
}
