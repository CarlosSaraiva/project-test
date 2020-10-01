import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miccional_app/app/shared/models/test.dart';

part 'diary.state.freezed.dart';

@freezed
abstract class DiaryState with _$DiaryState {
  const factory DiaryState.init() = _DiaryStateInitial;
  const factory DiaryState.loading() = _DiaryStateLoading;
  const factory DiaryState.loaded(List<Test> diaries) = _DiaryStateLoaded;
  const factory DiaryState.error() = _DiaryStateError;
}
