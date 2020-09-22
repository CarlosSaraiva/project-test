import 'package:dartz/dartz.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/shared/models/preferences_model.dart';

abstract class IPreferencesRepository {
  Either<Failure, Preferences> getPreferences();
  Future<Either<Failure, Preferences>> saveLocale(String locale);
}
