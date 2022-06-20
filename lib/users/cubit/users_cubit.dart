import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/users/models/user.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit()
      : super(
          const UsersState(
            users: [
              User(name: 'John', age: 30),
              User(name: 'Jane', age: 25),
              User(name: 'Mary', age: 21),
              User(name: 'Bob', age: 27),
            ],
          ),
        );
}
