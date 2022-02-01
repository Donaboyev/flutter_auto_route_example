import 'package:auto_route/annotations.dart';
import '../pages/book_details_page.dart';
import '../pages/books_page.dart';
import '../pages/home_page.dart';
import '../pages/account_page.dart';
import '../pages/account_details_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: '/home'),
    AutoRoute(page: BooksPage, path: '/books'),
    AutoRoute(page: BookDetailsPage, path: '/books/:bookId'),
    AutoRoute(page: AccountPage, path: '/account'),
    AutoRoute(page: AccountDetailsPage, path: '/account-details'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
