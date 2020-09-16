import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/core/di/injectable.dart';
import 'package:miccional_app/presenter/app.dart';

void main() {
  configureDependencies(Environment.prod);
  runApp(App());
}
