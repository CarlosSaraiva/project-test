// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test _$TestFromJson(Map<String, dynamic> json) {
  return Test(
    localId: json['localId'] as String,
    name: json['name'] as String,
    createAt: json['createAt'] == null
        ? null
        : DateTime.parse(json['createAt'] as String),
    avatar: json['avatar'] as String,
    remoteId: json['id'] as String,
  );
}

Map<String, dynamic> _$TestToJson(Test instance) => <String, dynamic>{
      'name': instance.name,
      'createAt': instance.createAt?.toIso8601String(),
      'avatar': instance.avatar,
      'localId': instance.localId,
      'id': instance.remoteId,
    };

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, non_constant_identifier_names

mixin $TestLocalAdapter on LocalAdapter<Test> {
  @override
  Map<String, Map<String, Object>> relationshipsFor([Test model]) => {};

  @override
  Test deserialize(map) {
    for (final key in relationshipsFor().keys) {
      map[key] = {
        '_': [map[key], !map.containsKey(key)],
      };
    }
    return _$TestFromJson(map);
  }

  @override
  Map<String, dynamic> serialize(model) => _$TestToJson(model);
}

// ignore: must_be_immutable
class $TestHiveLocalAdapter = HiveLocalAdapter<Test> with $TestLocalAdapter;

class $TestRemoteAdapter = RemoteAdapter<Test>
    with MockApiServerAdapter<Test>, TestEndpoint;

//

final testLocalAdapterProvider = RiverpodAlias.provider<LocalAdapter<Test>>(
    (ref) => $TestHiveLocalAdapter(
        ref.read(hiveLocalStorageProvider), ref.read(graphProvider)));

final testRemoteAdapterProvider = RiverpodAlias.provider<RemoteAdapter<Test>>(
    (ref) => $TestRemoteAdapter(ref.read(testLocalAdapterProvider)));

final testRepositoryProvider =
    RiverpodAlias.provider<Repository<Test>>((ref) => Repository<Test>(ref));

extension TestX on Test {
  /// Initializes "fresh" models (i.e. manually instantiated) to use
  /// [save], [delete] and so on.
  ///
  /// Pass:
  ///  - A `BuildContext` if using Flutter with Riverpod or Provider
  ///  - Nothing if using Flutter with GetIt
  ///  - A Riverpod `ProviderContainer` if using pure Dart
  ///  - Its own [Repository<Test>]
  Test init([container]) {
    final repository = container is Repository<Test>
        ? container
        : internalLocatorFn(testRepositoryProvider, container);
    return repository.internalAdapter.initializeModel(this, save: true) as Test;
  }
}
