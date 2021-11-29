import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate/ui/pages/main/main_page.dart';
import 'package:flutter_boilerplate/ui/pages/tab_counter/rx_counter/rx_counter_page.dart';
import 'package:flutter_boilerplate/ui/pages/tab_hello_world/hello_world/hello_world_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      name: 'MainRouter',
      path: '/',
      page: MainPage,
      children: [
        AutoRoute(
          path: 'counter',
          name: 'CounterRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: RxCounterPage,
              initial: true,
            ),
          ],
        ),
        AutoRoute(
          path: 'hello-world',
          name: 'HelloWorldRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HelloWorldPage,
              initial: true,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
