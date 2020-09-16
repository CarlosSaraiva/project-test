import 'package:dartz/dartz.dart';
import 'package:miccional_app/core/errors/failures.dart';
import 'package:miccional_app/domain/entities/user.dart';

abstract class IUserRepository {
  Future<Either<Failure, List<User>>> getUsers();
  Future<Either<Failure, User>> getUserById(int id);
  Future<Either<Failure, User>> createUser(User user);
  Future<Either<Failure, User>> updateUser(User user);
  Future<Either<Failure, User>> deleteUser(User user);
}
