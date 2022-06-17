import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:test_app/bookmarks/bookmarks.dart';
import 'package:test_app/books/books.dart';
import 'package:test_app/settings/settings.dart';
import 'package:test_app/users/users.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Route Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.black,
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookmarksCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) => setState(() => this.index = index),
          children: const [
            BooksPage(),
            UsersPage(),
            BookmarksPage(),
            SettingsPage(),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: index,
          onTap: (index) => pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          ),
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
      ),
    );
  }
}
