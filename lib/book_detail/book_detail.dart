import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/books/books.dart';
import 'package:test_app/constants.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({
    super.key,
    @pathParam required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final book = context.select(
      (BooksCubit booksCubit) => booksCubit.state.books[id],
    );

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
