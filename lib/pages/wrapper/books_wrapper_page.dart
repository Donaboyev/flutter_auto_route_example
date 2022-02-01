import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/books_cubit.dart';

class BooksWrapperPage extends StatelessWidget {
  const BooksWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wrapper Page'),
      ),
      body: BlocProvider(
        create: (_) => BooksCubit(),
        child: const AutoRouter(),
      ),
    );
  }
}
