// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages/pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    BooksRouter.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    AccountRouter.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.EmptyRouterPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    BooksRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.BooksPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    BookDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BookDetailsRouteArgs>(
          orElse: () =>
              BookDetailsRouteArgs(bookId: pathParams.getInt('bookId')));
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: _i1.BookDetailsPage(
              key: args.key, bookId: args.bookId, onRateBook: args.onRateBook),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AccountRoute.name: (routeData) {
      return _i2.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.AccountPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    },
    AccountDetailsRoute.name: (routeData) {
      return _i2.CustomPage<int>(
          routeData: routeData,
          child: const _i1.AccountDetailsPage(),
          transitionsBuilder: _i2.TransitionsBuilders.slideLeft,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/'),
        _i2.RouteConfig(BooksRouter.name, path: '/books', children: [
          _i2.RouteConfig(BooksRoute.name, path: '', parent: BooksRouter.name),
          _i2.RouteConfig(BookDetailsRoute.name,
              path: ':bookId', parent: BooksRouter.name),
          _i2.RouteConfig('*#redirect',
              path: '*',
              parent: BooksRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i2.RouteConfig(AccountRouter.name, path: '/account', children: [
          _i2.RouteConfig(AccountRoute.name,
              path: '', parent: AccountRouter.name),
          _i2.RouteConfig(AccountDetailsRoute.name,
              path: 'details', parent: AccountRouter.name),
          _i2.RouteConfig('*#redirect',
              path: '*',
              parent: AccountRouter.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BooksRouter extends _i2.PageRouteInfo<void> {
  const BooksRouter({List<_i2.PageRouteInfo>? children})
      : super(BooksRouter.name, path: '/books', initialChildren: children);

  static const String name = 'BooksRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class AccountRouter extends _i2.PageRouteInfo<void> {
  const AccountRouter({List<_i2.PageRouteInfo>? children})
      : super(AccountRouter.name, path: '/account', initialChildren: children);

  static const String name = 'AccountRouter';
}

/// generated route for
/// [_i1.BooksPage]
class BooksRoute extends _i2.PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: '');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [_i1.BookDetailsPage]
class BookDetailsRoute extends _i2.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute(
      {_i3.Key? key, required int bookId, void Function(int)? onRateBook})
      : super(BookDetailsRoute.name,
            path: ':bookId',
            args: BookDetailsRouteArgs(
                key: key, bookId: bookId, onRateBook: onRateBook),
            rawPathParams: {'bookId': bookId});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.key, required this.bookId, this.onRateBook});

  final _i3.Key? key;

  final int bookId;

  final void Function(int)? onRateBook;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, bookId: $bookId, onRateBook: $onRateBook}';
  }
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i2.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i1.AccountDetailsPage]
class AccountDetailsRoute extends _i2.PageRouteInfo<void> {
  const AccountDetailsRoute()
      : super(AccountDetailsRoute.name, path: 'details');

  static const String name = 'AccountDetailsRoute';
}
