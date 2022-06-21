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
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          appBar: AppBar(
            title: Text(context.topRoute.name),
          ),
          body: child,
          bottomNavigationBar: _BottomNavigationBar(tabsRouter: tabsRouter),
        );
      },
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  int index = 0;

  void setIndex() {
    setState(() {
      index = widget.tabsRouter.activeIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    widget.tabsRouter.addListener(setIndex);
  }

  @override
  void dispose() {
    widget.tabsRouter.removeListener(setIndex);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: index,
      onTap: widget.tabsRouter.setActiveIndex,
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
    );
  }
}
