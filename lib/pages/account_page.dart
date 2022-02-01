import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../route/app_router.gr.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Account page'),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () async {
                final int age =
                    await context.pushRoute(const AccountDetailsRoute()) as int;
                debugPrint('========> account page age: $age');
              },
              child: const Text('Go to account details page'),
            ),
          ],
        ),
      ),
    );
  }
}
