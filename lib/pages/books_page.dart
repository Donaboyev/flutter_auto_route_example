import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../route/app_router.gr.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Books page'),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(
                  BookDetailsRoute(
                    bookId: 1,
                    onRateBook: (int rate) {
                      debugPrint('======> books page on rate book: $rate');
                    },
                  ),
                );
              },
              child: const Text('Go to book details page'),
            ),
          ],
        ),
      ),
    );
  }
}
