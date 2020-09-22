// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'register_modules.dart';
import '../../modules/first_page/first_page_controller.dart';
import '../../shared/use_cases/get_preferences.dart';
import '../../shared/interfaces/I_preferences.dart';
import '../../shared/interfaces/i_user.dart';
import '../../shared/use_cases/list_all_users.dart';
import '../../shared/external/mock_api.dart';
import '../../shared/repositories/preferences_repository.dart';
import '../../modules/profile/profile_page.controller.dart';
import '../../shared/use_cases/save_locale.dart';
import '../../shared/repositories/user_repository.dart';

/// Environment names
const _prod = 'prod';
const _test = 'test';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.lazySingleton<Dio>(() => registerModules.dio, registerFor: {_prod});
  gh.factory<DioMock>(() => DioMock());
  gh.lazySingleton<IPreferencesRepository>(() => PreferencesRepositoryMock(),
      registerFor: {_test});
  gh.lazySingleton<IUserRepository>(() => UserRepositoryMock(),
      registerFor: {_test});
  gh.lazySingleton<ListAllUsers>(() => ListAllUsers(get<IUserRepository>()));
  gh.lazySingleton<MockApiClient>(() => registerModules.dioMock,
      registerFor: {_test});
  gh.factoryParam<MockApiClient, String, dynamic>(
      (baseUrl, _) => MockApiClient.dio(get<Dio>(), baseUrl: baseUrl),
      registerFor: {_prod});
  gh.lazySingleton<SaveLocaleUseCase>(
      () => SaveLocaleUseCase(get<IPreferencesRepository>()));
  gh.factory<FirstPageController>(
      () => FirstPageController(get<ListAllUsers>()));
  gh.lazySingleton<GetPreferencesUseCase>(
      () => GetPreferencesUseCase(get<IPreferencesRepository>()));
  gh.lazySingleton<IPreferencesRepository>(
      () => PreferencesRepository(get<SharedPreferences>()),
      registerFor: {_prod});
  gh.lazySingleton<IUserRepository>(() => UserRepository(get<MockApiClient>()),
      registerFor: {_prod});
  gh.factory<ProfilePageController>(() => ProfilePageController(
      get<SaveLocaleUseCase>(), get<GetPreferencesUseCase>()));

  // Eager singletons must be registered in the right order
  gh.singletonAsync<SharedPreferences>(() => registerModules.sharedPreferences);
  return get;
}

class _$RegisterModules extends RegisterModules {}
