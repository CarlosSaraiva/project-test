import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/core/interfaces/i_use_case.dart';
import 'package:miccional_app/app/domain/entities/user.dart';
import 'package:miccional_app/app/domain/use_cases/list_all_users.dart';

import 'package:mobx/mobx.dart';

part 'first_page_controller.g.dart';

@injectable
class FirstPageController extends _FirstPageControllerBase
    with _$FirstPageController {
  ListAllUsers listAllUsersUseCase;

  FirstPageController(this.listAllUsersUseCase) : super(listAllUsersUseCase);
}

abstract class _FirstPageControllerBase with Store {
  final ListAllUsers listAllUsersUseCase;
  ReactionDisposer disposeAutoRun;

  _FirstPageControllerBase(this.listAllUsersUseCase) {
    this.disposeAutoRun = autorun((_) async {
      await fetchUsers();
    });
  }

  @observable
  ObservableFuture<Either<Failure, List<User>>> userFuture;

  @action
  Future fetchUsers() async {
    userFuture = ObservableFuture(
      listAllUsersUseCase(NoParams()).then((result) => result),
    );
  }
}
