import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookDetailsPage extends StatelessWidget {
  final int bookId;
  final void Function(int)? onRateBook;

  const BookDetailsPage({
    Key? key,
    @PathParam('bookId') required this.bookId,
     this.onRateBook,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Book details page'),
            const SizedBox(height: 120),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                onRateBook?.call(rating.toInt());
              },
            )
          ],
        ),
      ),
    );
  }
}
