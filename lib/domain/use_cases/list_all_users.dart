import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/core/domain/i_use_case.dart';
import 'package:miccional_app/core/errors/failures.dart';
import 'package:miccional_app/domain/entities/user.dart';
import 'package:miccional_app/domain/repositories/i_user.dart';

@lazySingleton
class ListAllUsers implements IUseCase<List<User>, NoParams> {
  final IUserRepository _userRepository;

  ListAllUsers(this._userRepository);

  @override
  Future<Either<Failure, List<User>>> call(NoParams params) {
    return this._userRepository.getUsers();
  }
}
