import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miccional_app/app/core/ui/core.guard.dart';
import 'package:miccional_app/app/core/ui/core.router.gr.dart';
import 'package:easy_localization/easy_localization.dart';

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: ExtendedNavigator.builder(
        router: RootRouter(),
        guards: [CoreGuard()],
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
