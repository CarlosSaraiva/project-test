import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/domain/entities/preferences.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:miccional_app/app/domain/repositories/I_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mockito/mockito.dart';

@LazySingleton(as: IPreferencesRepository, env: [Environment.test])
class PreferencesRepositoryMock extends Mock implements IPreferencesRepository {
}

@LazySingleton(as: IPreferencesRepository, env: [Environment.prod])
class PreferencesRepository implements IPreferencesRepository {
  SharedPreferences _dataSource;

  PreferencesRepository(this._dataSource);

  @override
  Either<Failure, Preferences> getPreferences() {
    try {
      return Right(Preferences(locale: this._dataSource.getString('locale')));
    } catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Preferences>> saveLocale(String locale) async {
    try {
      await this._dataSource.setString('locale', locale);
      return this.getPreferences();
    } catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
