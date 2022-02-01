// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../pages/account_details_page.dart' as _i5;
import '../pages/account_page.dart' as _i4;
import '../pages/book_details_page.dart' as _i3;
import '../pages/books_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BooksRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BooksPage());
    },
    BookDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailsRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.BookDetailsPage(
              key: args.key, bookId: args.bookId, onRateBook: args.onRateBook));
    },
    AccountRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AccountPage());
    },
    AccountDetailsRoute.name: (routeData) {
      return _i6.MaterialPageX<int>(
          routeData: routeData, child: const _i5.AccountDetailsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i6.RouteConfig(HomeRoute.name, path: '/home'),
        _i6.RouteConfig(BooksRoute.name, path: '/books'),
        _i6.RouteConfig(BookDetailsRoute.name, path: '/books/:bookId'),
        _i6.RouteConfig(AccountRoute.name, path: '/account'),
        _i6.RouteConfig(AccountDetailsRoute.name, path: '/account-details'),
        _i6.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BooksPage]
class BooksRoute extends _i6.PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: '/books');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [_i3.BookDetailsPage]
class BookDetailsRoute extends _i6.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute(
      {_i7.Key? key,
      required int bookId,
      required void Function(int) onRateBook})
      : super(BookDetailsRoute.name,
            path: '/books/:bookId',
            args: BookDetailsRouteArgs(
                key: key, bookId: bookId, onRateBook: onRateBook),
            rawPathParams: {'bookId': bookId});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs(
      {this.key, required this.bookId, required this.onRateBook});

  final _i7.Key? key;

  final int bookId;

  final void Function(int) onRateBook;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{key: $key, bookId: $bookId, onRateBook: $onRateBook}';
  }
}

/// generated route for
/// [_i4.AccountPage]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '/account');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i5.AccountDetailsPage]
class AccountDetailsRoute extends _i6.PageRouteInfo<void> {
  const AccountDetailsRoute()
      : super(AccountDetailsRoute.name, path: '/account-details');

  static const String name = 'AccountDetailsRoute';
}
