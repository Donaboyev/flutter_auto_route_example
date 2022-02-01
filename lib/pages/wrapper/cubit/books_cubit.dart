import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(BooksState());
}
