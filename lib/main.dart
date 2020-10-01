import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/ui/core.widget.dart';
import 'package:miccional_app/app/core/utils/notification.dart';
import 'app/core/di/injectable.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.prod);
  await DotEnv().load('.env');
  await initNotification();

  runApp(EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR')],
    path: 'assets/translations',
    fallbackLocale: Locale('en', 'US'),
    child: CoreWidget(),
  ));
}
