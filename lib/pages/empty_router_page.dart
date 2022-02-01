import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../route/app_router.gr.dart';

class EmptyRouterPage extends StatelessWidget {
  const EmptyRouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Empty router page'),
      ),
    );
  }
}
