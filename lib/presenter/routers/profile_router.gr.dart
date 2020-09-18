// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/pages.dart';

class Routes {
  static const String profilePage = '/';
  static const all = <String>{
    profilePage,
  };
}

class ProfileRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.profilePage, page: ProfilePage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ProfilePage: (data) {
      final args = data.getArgs<ProfilePageArguments>(
        orElse: () => ProfilePageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfilePage(
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

/// ProfilePage arguments holder class
class ProfilePageArguments {
  final Key key;
  final dynamic color;
  final dynamic mainText;
  final dynamic route;
  final dynamic onPress;
  ProfilePageArguments(
      {this.key, this.color, this.mainText, this.route, this.onPress});
}
