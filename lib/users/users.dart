import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/routes.dart';
import 'package:test_app/users/users.dart';

export 'cubit/users_cubit.dart';
export 'models/user.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = context.select(
      (UsersCubit usersCubit) => usersCubit.state.users,
    );

    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          title: Text(user.name),
          subtitle: Text(user.age.toString()),
          onTap: () => context.router.push(UserDetailRoute(id: index)),
        );
      },
    );
  }
}
