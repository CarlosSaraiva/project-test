import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as di;
import 'package:miccional_app/app/core/di/injectable.dart';
import 'package:miccional_app/app/core/errors/failures.dart';
import 'package:miccional_app/app/core/external/mock_api.dart';
import 'package:miccional_app/app/shared/entities/user.dart';
import 'package:miccional_app/app/shared/models/user_model.dart';
import 'package:miccional_app/app/shared/repositories/user_repository.dart';

import 'package:mockito/mockito.dart';

void main() {
  UserRepository userRepository;
  MockApiClient mockApiClient;

  setUp(() {
    configureDependencies(di.Environment.test);
    mockApiClient = getIt<MockApiClient>();
    userRepository = UserRepository(mockApiClient);
  });

  final testUsers = [
    UserModel(
      id: '43432',
      avatar: 'http://www.local.com',
      createAt: DateTime(2017, 9, 7, 17, 30),
      name: 'Teste UM',
    )
  ];

  group('getUsers', () {
    test('should return an Either type of Failture and List<User>', () async {
      when(mockApiClient.getUsers()).thenAnswer((_) async => testUsers);

      final result = await userRepository.getUsers();

      expect(result, isInstanceOf<Either<Failure, List<User>>>());
      verify(mockApiClient.getUsers());
      verifyNoMoreInteractions(mockApiClient);
    });
  });
}
