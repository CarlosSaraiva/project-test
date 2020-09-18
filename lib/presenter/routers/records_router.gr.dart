// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/pages.dart';
import '../pages/records_page/records_page.dart';

class Routes {
  static const String recordsPage = '/';
  static const String firstPage = '/first-page';
  static const all = <String>{
    recordsPage,
    firstPage,
  };
}

class RecordsRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.recordsPage, page: RecordsPage),
    RouteDef(Routes.firstPage, page: FirstPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RecordsPage: (data) {
      final args = data.getArgs<RecordsPageArguments>(
        orElse: () => RecordsPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => RecordsPage(
          key: args.key,
          color: args.color,
          mainText: args.mainText,
          route: args.route,
          onPress: args.onPress,
        ),
        settings: data,
      );
    },
    FirstPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// RecordsPage arguments holder class
class RecordsPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  RecordsPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
