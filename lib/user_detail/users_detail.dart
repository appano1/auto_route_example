import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/users/users.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({
    super.key,
    @pathParam required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final user = context.select(
      (UsersCubit usersCubit) => usersCubit.state.users[id],
    );

    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Center(
        child: Text("${user.name}'s age: ${user.age}"),
      ),
    );
  }
}
