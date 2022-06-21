import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/auth/cubit/auth_cubit.dart';
import 'package:test_app/routes.dart';

class AuthWrapperPage extends StatelessWidget {
  const AuthWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isAuthenticated = context.watch<AuthCubit>().state;
    return AutoRouter.declarative(
      routes: (_) => [
        if (isAuthenticated) const HomeRoute(),
        if (!isAuthenticated) const LoginRoute(),
      ],
    );
  }
}
