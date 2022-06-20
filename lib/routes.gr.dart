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
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
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
        RouteConfig(HomeRoute.name, path: '/', children: [
          RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'book',
              fullMatch: true),
          RouteConfig(BooksRoute.name, path: 'book', parent: HomeRoute.name),
          RouteConfig(UsersRoute.name, path: 'user', parent: HomeRoute.name),
          RouteConfig(BookmarksRoute.name,
              path: 'bookmarks', parent: HomeRoute.name),
          RouteConfig(SettingsRoute.name,
              path: 'settings', parent: HomeRoute.name)
        ]),
        RouteConfig(BookDetailRoute.name, path: '/book/:id'),
        RouteConfig(UserDetailRoute.name, path: '/user/:id')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [BookDetailPage]
class BookDetailRoute extends PageRouteInfo<BookDetailRouteArgs> {
  BookDetailRoute({Key? key, required int id})
      : super(BookDetailRoute.name,
            path: '/book/:id',
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
            path: '/user/:id',
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
