// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/first_question_page/first_question_page.dart';
import '../pages/second_question_page/second_question_page.dart';

class Routes {
  static const String firstQuestionPage = '/';
  static const String secondQuestionPage = '/second-question-page';
  static const all = <String>{
    firstQuestionPage,
    secondQuestionPage,
  };
}

class SurveyRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.firstQuestionPage, page: FirstQuestionPage),
    RouteDef(Routes.secondQuestionPage, page: SecondQuestionPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    FirstQuestionPage: (data) {
      final args = data.getArgs<FirstQuestionPageArguments>(
        orElse: () => FirstQuestionPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstQuestionPage(
          key: args.key,
          color: args.color,
          mainText: args.mainText,
          route: args.route,
          onPress: args.onPress,
        ),
        settings: data,
      );
    },
    SecondQuestionPage: (data) {
      final args = data.getArgs<SecondQuestionPageArguments>(
        orElse: () => SecondQuestionPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SecondQuestionPage(
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

/// FirstQuestionPage arguments holder class
class FirstQuestionPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  FirstQuestionPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}

/// SecondQuestionPage arguments holder class
class SecondQuestionPageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  SecondQuestionPageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
