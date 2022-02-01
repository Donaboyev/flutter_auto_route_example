import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class AccountDetailsPage extends StatelessWidget {
  const AccountDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _age = 0;
    ;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Account details page'),
            const SizedBox(height: 120),
            TextField(
              onChanged: (value) {
                _age = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Enter your age'),
            ),
            const SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                context.popRoute(_age);
              },
              child: const Text('Submit your age'),
            ),
          ],
        ),
      ),
    );
  }
}
