import 'package:flutter/material.dart';
import 'package:test_app/books/books.dart';
import 'package:test_app/constants.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final book = BooksPage.books[id];
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              book.title,
              style: textTheme.titleLarge,
            ),
            Text(
              book.author,
              style: textTheme.titleSmall,
            ),
            gapH24,
            Text(
              book.description,
              style: textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
