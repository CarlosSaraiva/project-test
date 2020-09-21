import 'package:dartz/dartz.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/domain/entities/preferences.dart';

abstract class IPreferencesRepository {
  Either<Failure, Preferences> getPreferences();
  Future<Either<Failure, Preferences>> saveLocale(String locale);
}
