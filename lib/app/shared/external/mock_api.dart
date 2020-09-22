import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/shared/models/user_model.dart';
import 'package:retrofit/http.dart';

part 'mock_api.g.dart';

@prod
@injectable
@RestApi(baseUrl: "https://5f5925cd8040620016ab8e74.mockapi.io")
abstract class MockApiClient {
  @factoryMethod
  factory MockApiClient.dio(Dio dio, {@factoryParam String baseUrl}) =
      _MockApiClient;

  @GET("/users")
  Future<List<User>> getUsers();
}
