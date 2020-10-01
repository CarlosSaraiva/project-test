import 'package:flutter_data/flutter_data.dart';
import 'package:json_annotation/json_annotation.dart';

part "test.g.dart";

@JsonSerializable()
@DataRepository([MockApiServerAdapter, TestEndpoint])
class Test extends DataModel<Test> {
  final String name;
  final DateTime createAt;
  final String avatar;
  final String localId;
  @JsonKey(name: 'id')
  final String remoteId;
  @override
  String get id => this.localId;

  Test({this.localId, this.name, this.createAt, this.avatar, this.remoteId});
}

mixin MockApiServerAdapter<T extends DataModel<T>> on RemoteAdapter<T> {
  @override
  String get baseUrl => 'https://5f5925cd8040620016ab8e74.mockapi.io/';
}

mixin TestEndpoint on RemoteAdapter<Test> {
  @override
  String urlForFindAll(params) => '/Diaries';

  @override
  String urlForSave(id, params) => '/Diaries';

  @override
  DataRequestMethod methodForSave(id, params) =>
      id != null ? DataRequestMethod.POST : DataRequestMethod.POST;
}
