import 'package:flutter/material.dart';
import 'package:test_app/routes.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter();

    return MaterialApp.router(
      title: 'Auto Route Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.black,
        ),
      ),
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
