import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as di;
import 'package:miccional_app/app/core/di/injectable.dart';

void main() {
  setUp(() {
    configureDependencies(di.Environment.test);
  });
}
