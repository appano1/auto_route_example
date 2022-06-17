import 'package:flutter/material.dart';
import 'package:test_app/users/users.dart';

class UsersDetailPage extends StatelessWidget {
  const UsersDetailPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final user = UsersPage.users[id];
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Center(
        child: Text("${user.name}'s age: ${user.age}"),
      ),
    );
  }
}
