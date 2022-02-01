import 'package:auto_route/annotations.dart';
import '../pages/book_details_page.dart';
import '../pages/books_page.dart';
import '../pages/home_page.dart';
import '../pages/account_page.dart';
import '../pages/account_details_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: BooksPage),
    AutoRoute(page: BookDetailsPage),
    AutoRoute(page: AccountPage),
    AutoRoute(page: AccountDetailsPage),
  ],
)
class $AppRouter {}
