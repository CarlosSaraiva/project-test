import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/ui/core.widget.dart';

import 'app/core/di/injectable.dart';

void main() {
  configureDependencies(Environment.prod);
  runApp(EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR')],
    path: 'assets/translations',
    fallbackLocale: Locale('en', 'US'),
    child: CoreWidget(),
  ));
}
