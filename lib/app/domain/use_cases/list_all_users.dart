import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/core/interfaces/i_use_case.dart';
import 'package:miccional_app/app/domain/entities/user.dart';
import 'package:miccional_app/app/domain/repositories/i_user.dart';

@lazySingleton
class ListAllUsers implements IUseCaseFuture<List<User>, NoParams> {
  final IUserRepository _userRepository;

  ListAllUsers(this._userRepository);

  @override
  Future<Either<Failure, List<User>>> call(NoParams params) {
    return this._userRepository.getUsers();
  }
}
