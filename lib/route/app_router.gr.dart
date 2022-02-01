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
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BookDetailsPage());
    },
    AccountRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.AccountPage());
    },
    AccountDetailsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.AccountDetailsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeRoute.name, path: '/'),
        _i6.RouteConfig(BooksRoute.name, path: '/books-page'),
        _i6.RouteConfig(BookDetailsRoute.name, path: '/book-details-page'),
        _i6.RouteConfig(AccountRoute.name, path: '/account-page'),
        _i6.RouteConfig(AccountDetailsRoute.name, path: '/account-details-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BooksPage]
class BooksRoute extends _i6.PageRouteInfo<void> {
  const BooksRoute() : super(BooksRoute.name, path: '/books-page');

  static const String name = 'BooksRoute';
}

/// generated route for
/// [_i3.BookDetailsPage]
class BookDetailsRoute extends _i6.PageRouteInfo<void> {
  const BookDetailsRoute()
      : super(BookDetailsRoute.name, path: '/book-details-page');

  static const String name = 'BookDetailsRoute';
}

/// generated route for
/// [_i4.AccountPage]
class AccountRoute extends _i6.PageRouteInfo<void> {
  const AccountRoute() : super(AccountRoute.name, path: '/account-page');

  static const String name = 'AccountRoute';
}

/// generated route for
/// [_i5.AccountDetailsPage]
class AccountDetailsRoute extends _i6.PageRouteInfo<void> {
  const AccountDetailsRoute()
      : super(AccountDetailsRoute.name, path: '/account-details-page');

  static const String name = 'AccountDetailsRoute';
}
