import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  final int bookId;

  const BookDetailsPage({Key? key, @PathParam('bookId') required this.bookId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Book details page'),
      ),
    );
  }
}
