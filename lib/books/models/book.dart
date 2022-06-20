import 'package:equatable/equatable.dart';

class Book extends Equatable {
  const Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
  });

  final int id;
  final String title;
  final String author;
  final String description;

  @override
  List<Object> get props => [id, title, author, description];
}
