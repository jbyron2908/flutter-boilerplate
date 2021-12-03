import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/presentation/navigation/app_auto_router.gr.dart';
import 'package:flutter_boilerplate/presentation/widget/bottom_nav_bar/bottom_nav_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsScaffold(
        routes: const [
          HelloWorldRouter(),
          CounterRouter(),
        ],
        builder: (context, child, animation) {
          return WillPopScope(
            onWillPop: () async {
              var tabsRouter = context.tabsRouter;
              var current = tabsRouter.topRoute as StackRouter;

              if (current.stack.length > 1) {
                await current.pop();
              } else {
                if (tabsRouter.activeIndex != 0) {
                  tabsRouter.setActiveIndex(0);
                } else {
                  return true;
                }
              }

              return false;
            },
            child: child,
          );
        },
        bottomNavigationBuilder: (_, tabsRouter) {
          return buildBottomNavBar(tabsRouter);
        },
      ),
    );
  }

  // My custom bottom nav bar
  Widget buildBottomNavBar(TabsRouter tabsRouter) {
    return BottomNavBar(
      backgroundColor: Colors.white,
      items: [
        BottomNavBarItem(
          activeColor: Colors.blue,
          title: const Text('Hello World'),
          icon: const Icon(Icons.access_alarm),
        ),
        BottomNavBarItem(
          activeColor: Colors.blue,
          title: const Text('Counter'),
          icon: const Icon(Icons.ac_unit),
        ),
      ],
      selectedIndex: tabsRouter.activeIndex,
      onIndexChange: (index) async {
        tabsRouter.setActiveIndex(index);
      },
    );
  }
}
