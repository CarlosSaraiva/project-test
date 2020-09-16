// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FirstPageController on _FirstPageControllerBase, Store {
  final _$errorMessageAtom =
      Atom(name: '_FirstPageControllerBase.errorMessage');

  @override
  Failure get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(Failure value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  final _$usersAtom = Atom(name: '_FirstPageControllerBase.users');

  @override
  ObservableList<User> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(ObservableList<User> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  final _$userFutureAtom = Atom(name: '_FirstPageControllerBase.userFuture');

  @override
  ObservableFuture<Either<Failure, List<User>>> get userFuture {
    _$userFutureAtom.reportRead();
    return super.userFuture;
  }

  @override
  set userFuture(ObservableFuture<Either<Failure, List<User>>> value) {
    _$userFutureAtom.reportWrite(value, super.userFuture, () {
      super.userFuture = value;
    });
  }

  final _$loadingAtom = Atom(name: '_FirstPageControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$fetchUsersAsyncAction =
      AsyncAction('_FirstPageControllerBase.fetchUsers');

  @override
  Future<dynamic> fetchUsers() {
    return _$fetchUsersAsyncAction.run(() => super.fetchUsers());
  }

  @override
  String toString() {
    return '''
errorMessage: ${errorMessage},
users: ${users},
userFuture: ${userFuture},
loading: ${loading}
    ''';
  }
}
