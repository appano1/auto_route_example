import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/routes.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}

void main() {
  BlocOverrides.runZoned(
    () => runApp(const App()),
    blocObserver: MyBlocObserver(),
  );
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
