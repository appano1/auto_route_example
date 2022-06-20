import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:test_app/routes.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        BooksRoute(),
        UsersRoute(),
        BookmarksRoute(),
        SettingsRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
          ),
          body: child,
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.book),
                title: const Text('Books'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: const Text('Users'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.bookmarks),
                title: const Text('Bookmarks'),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.settings),
                title: const Text('Settings'),
              ),
            ],
          ),
        );
      },
    );
  }
}
