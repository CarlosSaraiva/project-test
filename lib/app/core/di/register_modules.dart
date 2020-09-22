import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/shared/external/mock_api.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class DioMock extends Mock implements MockApiClient {}

@module
abstract class RegisterModules {
  @test
  @LazySingleton(as: MockApiClient)
  DioMock get dioMock => DioMock();

  @prod
  @lazySingleton
  Dio get dio => Dio();

  @singleton
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();
}
