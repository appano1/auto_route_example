import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/books/books.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit()
      : super(
          const BooksState(
            books: [
              Book(
                id: 0,
                title: 'The C Programming Language',
                author: 'Dennis Ritchie',
                description: 'The C Programming Language, 4th Edition',
              ),
              Book(
                id: 1,
                title: 'The C++ Programming Language',
                author: 'Bjarne Stroustrup',
                description: 'The C++ Programming Language, 3rd Edition',
              ),
              Book(
                id: 2,
                title: 'The C# Programming Language',
                author: 'Microsoft',
                description: 'The C# Programming Language, 2nd Edition',
              ),
            ],
          ),
        );
}
