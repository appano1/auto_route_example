import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_app/book_detail/book_detail.dart';
import 'package:test_app/bookmarks/bookmarks.dart';
import 'package:test_app/books/books.dart';
import 'package:test_app/main.dart';
import 'package:test_app/settings/settings.dart';
import 'package:test_app/user_detail/users_detail.dart';
import 'package:test_app/users/users.dart';

part 'routes.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'book',
          page: BooksPage,
          initial: true,
        ),
        AutoRoute(
          path: 'user',
          page: UsersPage,
        ),
        AutoRoute(
          path: 'bookmarks',
          page: BookmarksPage,
        ),
        AutoRoute(
          path: 'settings',
          page: SettingsPage,
        ),
      ],
    ),
    AutoRoute(
      path: '/book/:id',
      page: BookDetailPage,
    ),
    AutoRoute(
      path: '/user/:id',
      page: UserDetailPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
