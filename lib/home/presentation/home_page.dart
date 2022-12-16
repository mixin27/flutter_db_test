import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sqlite_demo/routes/app_router.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        MenuHomeRoute(),
        WebHomeRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
        onDestinationSelected: tabsRouter.setActiveIndex,
        selectedIndex: tabsRouter.activeIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.menu_rounded),
            label: "Menus",
          ),
          NavigationDestination(
            icon: Icon(Icons.web_rounded),
            label: "Webs",
          ),
        ],
      ),
    );
  }
}
