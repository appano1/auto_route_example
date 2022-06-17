import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_app/book_detail/book_detail.dart';
import 'package:test_app/bookmarks/bookmarks.dart';

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

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  static List<Book> get books => const [
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
      ];

  @override
  Widget build(BuildContext context) {
    final bookmarks = context.select(
      (BookmarksCubit element) => element.state.bookmarks,
    );
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          trailing: IconButton(
            onPressed: () => context.read<BookmarksCubit>().toggle(book.id),
            icon: BlocBuilder<BookmarksCubit, BookmarksState>(
              builder: (context, state) {
                return bookmarks.contains(book.id)
                    ? const Icon(Icons.bookmark)
                    : const Icon(Icons.bookmark_outline);
              },
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => BookDetailPage(id: book.id),
              ),
            );
          },
        );
      },
    );
  }
}
