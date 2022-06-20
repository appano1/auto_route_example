import 'package:equatable/equatable.dart';

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
