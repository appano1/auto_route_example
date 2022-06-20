import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/bookmarks/bookmarks.dart';
import 'package:test_app/books/books.dart';
import 'package:test_app/users/users.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookmarksCubit(),
        ),
        BlocProvider(
          create: (context) => BooksCubit(),
        ),
        BlocProvider(
          create: (context) => UsersCubit(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
