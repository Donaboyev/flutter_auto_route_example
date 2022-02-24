import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class LoginWrapperPage extends StatelessWidget {
  const LoginWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      routes: (_, __) {
        return [
          EmailRout
        ];
      },
    );
  }
}
