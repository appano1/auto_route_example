import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/auth/cubit/auth_cubit.dart';
import 'package:test_app/routes.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    debugPrint('${bloc.runtimeType} $change');
  }
}

void main() {
  BlocOverrides.runZoned(
    () => runApp(
      BlocProvider(
        create: (context) => AuthCubit(),
        child: App(),
      ),
    ),
    blocObserver: MyBlocObserver(),
  );
}

class MyRouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    debugPrint('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    debugPrint('Tab route re-visited: ${route.name}');
  }
}

class App extends StatelessWidget {
  App({super.key});

  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Auto Route Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.black,
        ),
      ),
      routerDelegate: router.delegate(
        navigatorObservers: () => [MyRouterObserver()],
      ),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
