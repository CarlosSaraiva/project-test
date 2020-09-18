import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/ui/core.widget.dart';

import 'app/core/di/injectable.dart';

void main() {
  configureDependencies(Environment.prod);
  runApp(CoreWidget());
}
