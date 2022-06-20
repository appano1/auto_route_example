import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:test_app/routes.dart';
import 'package:test_app/user_detail/users_detail.dart';

class User extends Equatable {
  const User({
    required this.name,
    required this.age,
  });

  final String name;
  final int age;

  @override
  List<Object> get props => [name, age];
}

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  static List<User> get users => const [
        User(name: 'John', age: 30),
        User(name: 'Jane', age: 25),
        User(name: 'Mary', age: 21),
        User(name: 'Bob', age: 27),
      ];

  @override
  Widget build(BuildContext context) {
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
