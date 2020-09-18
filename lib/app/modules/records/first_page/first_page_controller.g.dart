// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FirstPageController on _FirstPageControllerBase, Store {
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

  final _$fetchUsersAsyncAction =
      AsyncAction('_FirstPageControllerBase.fetchUsers');

  @override
  Future<dynamic> fetchUsers() {
    return _$fetchUsersAsyncAction.run(() => super.fetchUsers());
  }

  @override
  String toString() {
    return '''
userFuture: ${userFuture}
    ''';
  }
}
