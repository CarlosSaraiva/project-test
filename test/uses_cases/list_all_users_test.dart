import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as di;
import 'package:miccional_app/app/core/di/injectable.dart';
import 'package:miccional_app/app/core/interfaces/i_use_case.dart';
import 'package:miccional_app/app/domain/entities/user.dart';
import 'package:miccional_app/app/domain/repositories/i_user.dart';
import 'package:miccional_app/app/domain/use_cases/list_all_users.dart';
import 'package:mockito/mockito.dart';

void main() {
  ListAllUsers useCase;
  IUserRepository userRepositoryMock;

  setUp(() {
    configureDependencies(di.Environment.test);
    userRepositoryMock = getIt<IUserRepository>();
    useCase = getIt<ListAllUsers>();
  });

  final testUsers = [
    User(
        id: '43432',
        avatar: 'http://www.local.com',
        createAt: DateTime(2017, 9, 7, 17, 30),
        name: 'Teste UM')
  ];

  test('should fetch all the users from the repository', () async {
    when(userRepositoryMock.getUsers())
        .thenAnswer((_) async => Right(testUsers));

    final result = await useCase(NoParams());

    expect(result, Right(testUsers));
    verify(userRepositoryMock.getUsers());
    verifyNoMoreInteractions(userRepositoryMock);
  });
}
