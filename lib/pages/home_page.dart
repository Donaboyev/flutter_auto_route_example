import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../route/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home page'),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(const BooksRoute());
              },
              child: const Text('Go to books page'),
            ),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(const AccountRoute());
              },
              child: const Text('Go to account page'),
            ),
          ],
        ),
      ),
    );
  }
}
