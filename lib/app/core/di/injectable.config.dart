// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'register_modules.dart';
import '../../modules/records/first_page/first_page.dart';
import '../../modules/records/first_page/first_page_controller.dart';
import '../../shared/interfaces/i_user.dart';
import '../../shared/use_cases/list_all_users.dart';
import '../external/mock_api.dart';
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
  gh.factory<FirstPage>(() => FirstPage());
  gh.lazySingleton<IUserRepository>(() => UserRepositoryMock(),
      registerFor: {_test});
  gh.lazySingleton<ListAllUsers>(() => ListAllUsers(get<IUserRepository>()));
  gh.lazySingleton<MockApiClient>(() => registerModules.dioMock,
      registerFor: {_test});
  gh.factoryParam<MockApiClient, String, dynamic>(
      (baseUrl, _) => MockApiClient.dioMock(get<Dio>(), baseUrl: baseUrl),
      registerFor: {_prod});
  gh.factory<FirstPageController>(
      () => FirstPageController(get<ListAllUsers>()));
  gh.lazySingleton<IUserRepository>(() => UserRepository(get<MockApiClient>()),
      registerFor: {_prod});
  return get;
}

class _$RegisterModules extends RegisterModules {}
