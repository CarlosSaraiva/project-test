import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/core/external/mock_api.dart';
import 'package:miccional_app/app/domain/entities/user.dart';
import 'package:miccional_app/app/domain/repositories/i_user.dart';

import 'package:mockito/mockito.dart';

@LazySingleton(as: IUserRepository, env: [Environment.test])
class UserRepositoryMock extends Mock implements IUserRepository {}

@LazySingleton(as: IUserRepository, env: [Environment.prod])
class UserRepository implements IUserRepository {
  final MockApiClient _remoteDataSource;

  UserRepository(this._remoteDataSource);

  @override
  Future<Either<Failure, User>> createUser(User user) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> deleteUser(User user) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getUserById(int id) async {
    // TODO: implement deleteUser
    // this.remoteDataSource.
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    try {
      final List<User> response = await _remoteDataSource.getUsers();
      return Right(response);
    } on DioError catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, User>> updateUser(User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
