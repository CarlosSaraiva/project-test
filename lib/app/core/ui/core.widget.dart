import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miccional_app/app/core/ui/core.router.gr.dart';

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ExtendedNavigator.builder(
        router: RootRouter(),
        builder: (context, extendedNav) => Theme(
          data: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          child: extendedNav,
        ),
      ),
    );
  }
}
