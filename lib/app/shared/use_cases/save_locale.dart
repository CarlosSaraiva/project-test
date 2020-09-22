import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:miccional_app/app/shared/interfaces/I_preferences.dart';
import 'package:miccional_app/app/shared/interfaces/i_use_case.dart';
import 'package:miccional_app/app/shared/models/preferences_model.dart';

@lazySingleton
class SaveLocaleUseCase implements IUseCaseFuture<Preferences, Params> {
  final IPreferencesRepository preferencesRepository;

  SaveLocaleUseCase(this.preferencesRepository);

  @override
  Future<Either<Failure, Preferences>> call(Params params) {
    return this.preferencesRepository.saveLocale(params.locale);
  }
}

class Params {
  final String locale;

  Params({@required this.locale});
}
