// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'tips_page.dart';

class Routes {
  static const String tipsPage = '/';
  static const all = <String>{
    tipsPage,
  };
}

class TipsRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.tipsPage, page: TipsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    TipsPage: (data) {
      final args = data.getArgs<TipsPageArguments>(
        orElse: () => TipsPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TipsPage(
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

/// TipsPage arguments holder class
class TipsPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  TipsPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
