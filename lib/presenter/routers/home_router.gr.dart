// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/pages.dart';

class Routes {
  static const String firstPage = '/';
  static const String secondPage = '/second-page';
  static const all = <String>{
    firstPage,
    secondPage,
  };
}

class HomeRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.firstPage, page: FirstPage),
    RouteDef(Routes.secondPage, page: SecondPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    FirstPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstPage(),
        settings: data,
      );
    },
    SecondPage: (data) {
      final args = data.getArgs<SecondPageArguments>(
        orElse: () => SecondPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SecondPage(
          key: args.key,
          color: args.color,
          mainText: args.mainText,
          route: args.route,
          onPress: args.onPress,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SecondPage arguments holder class
class SecondPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  SecondPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
