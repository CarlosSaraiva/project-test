// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../modules/diary/diary.page.dart';
import '../../modules/intro/tutorial.page.dart';
import '../../modules/intro/welcome.page.dart';
import '../../shared/navigators/bottom_tab_navigator.dart';
import 'core.guard.dart';

class Routes {
  static const String diaryPage = '/';
  static const String welcomePage = '/welcome';
  static const String tutorialPage = '/tutorial';
  static const String bottomTabNavigator = '/main';
  static const all = <String>{
    diaryPage,
    welcomePage,
    tutorialPage,
    bottomTabNavigator,
  };
}

class RootRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.diaryPage, page: DiaryPage, guards: [CoreGuard]),
    RouteDef(Routes.welcomePage, page: WelcomePage),
    RouteDef(Routes.tutorialPage, page: TutorialPage),
    RouteDef(Routes.bottomTabNavigator, page: BottomTabNavigator),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    DiaryPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DiaryPage(),
        settings: data,
      );
    },
    WelcomePage: (data) {
      final args = data.getArgs<WelcomePageArguments>(
        orElse: () => WelcomePageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomePage(
          key: args.key,
          color: args.color,
          mainText: args.mainText,
          route: args.route,
          onPress: args.onPress,
        ),
        settings: data,
      );
    },
    TutorialPage: (data) {
      final args = data.getArgs<TutorialPageArguments>(
        orElse: () => TutorialPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TutorialPage(
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

/// WelcomePage arguments holder class
class WelcomePageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  WelcomePageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}

/// TutorialPage arguments holder class
class TutorialPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  TutorialPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
