import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_app/bookmarks/bookmarks.dart';
import 'package:test_app/books/cubit/books_cubit.dart';
import 'package:test_app/routes.dart';

export 'cubit/books_cubit.dart';
export 'models/book.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bookmarks = context.select(
      (BookmarksCubit element) => element.state.bookmarks,
    );
    final books = context.select((BooksCubit cubit) => cubit.state.books);
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
          onTap: () => context.router.push<void>(BookDetailRoute(id: book.id)),
        );
      },
    );
  }
}
