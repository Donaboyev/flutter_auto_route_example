import 'package:auto_route/auto_route.dart';
import '../pages/pages.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: LoginWrapperPage,
      path: '/login',
      transitionsBuilder: TransitionsBuilders.slideLeft,
      children: [
        CustomRoute(
          page: EmailPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ],
    ),
    CustomRoute(
      page: HomePage,
      initial: true,
      path: '/',
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
    ),
    CustomRoute(
      page: BooksWrapperPage,
      name: 'BooksRouter',
      path: '/books',
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      children: [
        CustomRoute(
          path: '',
          page: BooksPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          path: ':bookId',
          page: BookDetailsPage,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    CustomRoute(
      page: EmptyRouterPage,
      path: '/account',
      name: 'AccountRouter',
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      children: [
        CustomRoute(
          page: AccountPage,
          path: '',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute<int>(
          page: AccountDetailsPage,
          path: 'details',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
