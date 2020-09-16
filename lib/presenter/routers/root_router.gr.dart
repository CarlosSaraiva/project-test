// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../navigators/bottom_tab_navigator.dart';
import '../pages/pages.dart';

class Routes {
  static const String introPage = '/';
  static const String sliderPage = '/slider-page';
  static const String bottomTabNavigator = '/main';
  static const all = <String>{
    introPage,
    sliderPage,
    bottomTabNavigator,
  };
}

class RootRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.introPage, page: IntroPage),
    RouteDef(Routes.sliderPage, page: SliderPage),
    RouteDef(Routes.bottomTabNavigator, page: BottomTabNavigator),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    IntroPage: (data) {
      final args = data.getArgs<IntroPageArguments>(
        orElse: () => IntroPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroPage(
          key: args.key,
          color: args.color,
          mainText: args.mainText,
          route: args.route,
          onPress: args.onPress,
        ),
        settings: data,
      );
    },
    SliderPage: (data) {
      final args = data.getArgs<SliderPageArguments>(
        orElse: () => SliderPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SliderPage(
          key: args.key,
          color: args.color,
          mainText: args.mainText,
          route: args.route,
          onPress: args.onPress,
        ),
        settings: data,
      );
    },
    BottomTabNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BottomTabNavigator(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// IntroPage arguments holder class
class IntroPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  IntroPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}

/// SliderPage arguments holder class
class SliderPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  SliderPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
