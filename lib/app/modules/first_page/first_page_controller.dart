import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/shared/interfaces/i_use_case.dart';
import 'package:miccional_app/app/shared/models/user_model.dart';
import 'package:miccional_app/app/shared/use_cases/list_all_users.dart';

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

  _FirstPageControllerBase(this.listAllUsersUseCase);

  @observable
  ObservableFuture<Either<Failure, List<User>>> userFuture;

  @action
  Future fetchUsers() async {
    userFuture = ObservableFuture(
      listAllUsersUseCase(NoParams()).then((result) => result),
    );
  }
}
