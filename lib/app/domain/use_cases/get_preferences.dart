import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/core/interfaces/i_use_case.dart';
import 'package:miccional_app/app/domain/entities/preferences.dart';
import 'package:miccional_app/app/domain/repositories/I_preferences.dart';

@lazySingleton
class GetPreferencesUseCase implements IUseCase<Preferences, NoParams> {
  final IPreferencesRepository _preferencesRepository;

  GetPreferencesUseCase(this._preferencesRepository);

  @override
  Either<Failure, Preferences> call(NoParams params) {
    return this._preferencesRepository.getPreferences();
  }
}
