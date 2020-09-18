import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/external/mock_api.dart';
import 'package:mockito/mockito.dart';

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
}
