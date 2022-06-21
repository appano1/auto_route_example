// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'routes.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AuthWrapperPage());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    DashBoardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DashBoardPage());
    },
    BookDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookDetailRouteArgs>(
          orElse: () => BookDetailRouteArgs(id: pathParams.getInt('id')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: BookDetailPage(key: args.key, id: args.id));
    },
    UserDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserDetailRouteArgs>(
          orElse: () => UserDetailRouteArgs(id: pathParams.getInt('id')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: UserDetailPage(key: args.key, id: args.id));
    },
    BooksRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BooksPage());
    },
    UsersRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const UsersPage());
    },
    BookmarksRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const BookmarksPage());
    },
    SettingsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AuthWrapperRoute.name, path: '/', children: [
          RouteConfig(HomeRoute.name,
              path: '',
              parent: AuthWrapperRoute.name,
              children: [
                RouteConfig(DashBoardRoute.name,
                    path: '',
                    parent: HomeRoute.name,
                    children: [
                      RouteConfig(BooksRoute.name,
                          path: 'book', parent: DashBoardRoute.name),
                      RouteConfig(UsersRoute.name,
                          path: 'user', parent: DashBoardRoute.name),
                      RouteConfig(BookmarksRoute.name,
                          path: 'bookmarks', parent: DashBoardRoute.name),
                      RouteConfig(SettingsRoute.name,
                          path: 'settings', parent: DashBoardRoute.name)
                    ]),
                RouteConfig(BookDetailRoute.name,
                    path: 'book/:id', parent: HomeRoute.name),
                RouteConfig(UserDetailRoute.name,
                    path: 'user/:id', parent: HomeRoute.name)
              ]),
          RouteConfig(LoginRoute.name,
              path: 'login', parent: AuthWrapperRoute.name)
        ])
      ];
}

/// generated route for
/// [AuthWrapperPage]
class AuthWrapperRoute extends PageRouteInfo<void> {
  const AuthWrapperRoute({List<PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [DashBoardPage]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(DashBoardRoute.name, path: '', initialChildren: children);

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [BookDetailPage]
class BookDetailRoute extends PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({Key? key, required int id})
      : super(BookDetailRoute.name,
            path: 'book/:id',
            args: BookDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'BookDetailRoute';
}

class BookDetailRouteArgs {
  const BookDetailRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'BookDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [UserDetailPage]
class UserDetailRoute extends PageRouteInfo<UserDetailRouteArgs> {
  UserDetailRoute({Key? key, required int id})
      : super(UserDetailRoute.name,
            path: 'user/:id',
            args: UserDetailRouteArgs(key: key, id: id),
            rawPathParams: {'id': id});

  static const String name = 'UserDetailRoute';
}

class UserDetailRouteArgs {
  const UserDetailRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'UserDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [BooksPage]
class BooksRoute extends PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: 'book');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [UsersPage]
class UsersRoute extends PageRouteInfo<void> {
  const UsersRoute() : super(UsersRoute.name, path: 'user');

  static const String name = 'UsersRoute';
}

/// generated route for
/// [BookmarksPage]
class BookmarksRoute extends PageRouteInfo<void> {
  const BookmarksRoute() : super(BookmarksRoute.name, path: 'bookmarks');

  static const String name = 'BookmarksRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}
