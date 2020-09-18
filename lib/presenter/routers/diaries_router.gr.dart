// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/diary_page/diary_page.dart';

class Routes {
  static const String diaryPage = '/';
  static const all = <String>{
    diaryPage,
  };
}

class DiariesRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.diaryPage, page: DiaryPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    DiaryPage: (data) {
      final args = data.getArgs<DiaryPageArguments>(
        orElse: () => DiaryPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => DiaryPage(
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

/// DiaryPage arguments holder class
class DiaryPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  DiaryPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
