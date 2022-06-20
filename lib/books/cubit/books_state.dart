part of 'books_cubit.dart';

class BooksState extends Equatable {
  const BooksState({
    required this.books,
  });

  final List<Book> books;

  @override
  List<Object> get props => [books];
}
