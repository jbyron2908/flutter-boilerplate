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
          return child;
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
          icon: const Icon(Icons.home),
        ),
        BottomNavBarItem(
          activeColor: Colors.blue,
          title: const Text('Counter'),
          icon: const Icon(Icons.calculate),
        ),
      ],
      selectedIndex: tabsRouter.activeIndex,
      onIndexChange: (index) async {
        if (index == tabsRouter.activeIndex) {
          var topRouter = tabsRouter.topRoute.router;
          while (topRouter.canPopSelfOrChildren) {
            await topRouter.pop();
          }
        } else {
          tabsRouter.setActiveIndex(index);
        }
      },
    );
  }
}
