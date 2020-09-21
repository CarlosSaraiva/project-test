import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:miccional_app/app/core/interfaces/i_use_case.dart';
import 'package:miccional_app/app/domain/entities/preferences.dart';
import 'package:meta/meta.dart';
import 'package:miccional_app/app/domain/repositories/I_preferences.dart';

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
