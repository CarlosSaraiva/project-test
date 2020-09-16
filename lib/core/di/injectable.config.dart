// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../presenter/pages/first_page/first_page.dart';
import '../../presenter/pages/first_page/first_page_controller.dart';
import '../../domain/repositories/i_user.dart';
import '../../domain/use_cases/list_all_users.dart';
import '../../infrastructure/data_sources/mock_api.dart';
import 'register_modules.dart';
import '../../infrastructure/repositories/user_repository.dart';

/// Environment names
const _test = 'test';
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModules = _$RegisterModules();
  gh.lazySingleton<Dio>(() => registerModules.dio);
  gh.factory<FirstPage>(() => FirstPage());
  gh.lazySingleton<IUserRepository>(() => UserRepositoryMock(),
      registerFor: {_test});
  gh.lazySingleton<ListAllUsers>(() => ListAllUsers(get<IUserRepository>()));
  gh.factoryParam<MockApiClient, String, dynamic>(
      (baseUrl, _) => MockApiClient.dio(get<Dio>(), baseUrl: baseUrl));
  gh.factory<FirstPageController>(
      () => FirstPageController(get<ListAllUsers>()));
  gh.lazySingleton<IUserRepository>(() => UserRepository(get<MockApiClient>()),
      registerFor: {_prod});
  return get;
}

class _$RegisterModules extends RegisterModules {}
