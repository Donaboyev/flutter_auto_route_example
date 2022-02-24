import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  final void Function(String) onNext;

  const EmailPage({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _email = '';
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              _email = value;
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'Email'),
          ),
          const SizedBox(height: 60),
          ElevatedButton(
            onPressed: () {
              onNext(_email);
            },
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
