import 'package:auto_route/auto_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/book_detail/book_detail.dart';
import 'package:test_app/books/books.dart';
import 'package:test_app/routes.dart';

class BookmarksCubit extends Cubit<BookmarksState> {
  BookmarksCubit() : super(const BookmarksState());

  void toggle(int id) {
    return state.bookmarks.contains(id) ? remove(id) : add(id);
  }

  void add(int id) {
    final index = BooksPage.books.indexWhere((element) => element.id == id);
    if (index != -1) return emit(BookmarksState([...state.bookmarks, id]));
  }

  void remove(int id) {
    final index = BooksPage.books.indexWhere((element) => element.id == id);
    if (index == -1) return;

    return emit(
      BookmarksState(
        [...state.bookmarks.where((element) => element != id)],
      ),
    );
  }
}

class BookmarksState extends Equatable {
  const BookmarksState([this.bookmarks = const []]);

  final List<int> bookmarks;

  @override
  List<Object> get props => [bookmarks];
}

class BookmarksPage extends StatelessWidget {
  const BookmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bookmarks = context.select(
      (BookmarksCubit element) => element.state.bookmarks,
    );
    final markedBooks = [
      for (final id in bookmarks) BooksPage.books[id],
    ];

    return ListView.builder(
      itemCount: markedBooks.length,
      itemBuilder: (context, index) {
        final book = markedBooks[index];
        return ListTile(
          title: Text(book.title),
          subtitle: Text(book.author),
          trailing: IconButton(
            onPressed: () => context.read<BookmarksCubit>().toggle(book.id),
            icon: const Icon(Icons.bookmark),
          ),
          onTap: () => context.router.push<void>(BookDetailRoute(id: book.id)),
        );
      },
    );
  }
}
