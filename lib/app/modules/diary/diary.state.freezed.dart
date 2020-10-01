// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'diary.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiaryStateTearOff {
  const _$DiaryStateTearOff();

// ignore: unused_element
  _DiaryStateInitial init() {
    return const _DiaryStateInitial();
  }

// ignore: unused_element
  _DiaryStateLoading loading() {
    return const _DiaryStateLoading();
  }

// ignore: unused_element
  _DiaryStateLoaded loaded(List<Test> diaries) {
    return _DiaryStateLoaded(
      diaries,
    );
  }

// ignore: unused_element
  _DiaryStateError error() {
    return const _DiaryStateError();
  }
}

// ignore: unused_element
const $DiaryState = _$DiaryStateTearOff();

mixin _$DiaryState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result loaded(List<Test> diaries),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result loaded(List<Test> diaries),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_DiaryStateInitial value),
    @required Result loading(_DiaryStateLoading value),
    @required Result loaded(_DiaryStateLoaded value),
    @required Result error(_DiaryStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_DiaryStateInitial value),
    Result loading(_DiaryStateLoading value),
    Result loaded(_DiaryStateLoaded value),
    Result error(_DiaryStateError value),
    @required Result orElse(),
  });
}

abstract class $DiaryStateCopyWith<$Res> {
  factory $DiaryStateCopyWith(
          DiaryState value, $Res Function(DiaryState) then) =
      _$DiaryStateCopyWithImpl<$Res>;
}

class _$DiaryStateCopyWithImpl<$Res> implements $DiaryStateCopyWith<$Res> {
  _$DiaryStateCopyWithImpl(this._value, this._then);

  final DiaryState _value;
  // ignore: unused_field
  final $Res Function(DiaryState) _then;
}

abstract class _$DiaryStateInitialCopyWith<$Res> {
  factory _$DiaryStateInitialCopyWith(
          _DiaryStateInitial value, $Res Function(_DiaryStateInitial) then) =
      __$DiaryStateInitialCopyWithImpl<$Res>;
}

class __$DiaryStateInitialCopyWithImpl<$Res>
    extends _$DiaryStateCopyWithImpl<$Res>
    implements _$DiaryStateInitialCopyWith<$Res> {
  __$DiaryStateInitialCopyWithImpl(
      _DiaryStateInitial _value, $Res Function(_DiaryStateInitial) _then)
      : super(_value, (v) => _then(v as _DiaryStateInitial));

  @override
  _DiaryStateInitial get _value => super._value as _DiaryStateInitial;
}

class _$_DiaryStateInitial implements _DiaryStateInitial {
  const _$_DiaryStateInitial();

  @override
  String toString() {
    return 'DiaryState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DiaryStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result loaded(List<Test> diaries),
    @required Result error(),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result loaded(List<Test> diaries),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_DiaryStateInitial value),
    @required Result loading(_DiaryStateLoading value),
    @required Result loaded(_DiaryStateLoaded value),
    @required Result error(_DiaryStateError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_DiaryStateInitial value),
    Result loading(_DiaryStateLoading value),
    Result loaded(_DiaryStateLoaded value),
    Result error(_DiaryStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _DiaryStateInitial implements DiaryState {
  const factory _DiaryStateInitial() = _$_DiaryStateInitial;
}

abstract class _$DiaryStateLoadingCopyWith<$Res> {
  factory _$DiaryStateLoadingCopyWith(
          _DiaryStateLoading value, $Res Function(_DiaryStateLoading) then) =
      __$DiaryStateLoadingCopyWithImpl<$Res>;
}

class __$DiaryStateLoadingCopyWithImpl<$Res>
    extends _$DiaryStateCopyWithImpl<$Res>
    implements _$DiaryStateLoadingCopyWith<$Res> {
  __$DiaryStateLoadingCopyWithImpl(
      _DiaryStateLoading _value, $Res Function(_DiaryStateLoading) _then)
      : super(_value, (v) => _then(v as _DiaryStateLoading));

  @override
  _DiaryStateLoading get _value => super._value as _DiaryStateLoading;
}

class _$_DiaryStateLoading implements _DiaryStateLoading {
  const _$_DiaryStateLoading();

  @override
  String toString() {
    return 'DiaryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DiaryStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result loaded(List<Test> diaries),
    @required Result error(),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result loaded(List<Test> diaries),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_DiaryStateInitial value),
    @required Result loading(_DiaryStateLoading value),
    @required Result loaded(_DiaryStateLoaded value),
    @required Result error(_DiaryStateError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_DiaryStateInitial value),
    Result loading(_DiaryStateLoading value),
    Result loaded(_DiaryStateLoaded value),
    Result error(_DiaryStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DiaryStateLoading implements DiaryState {
  const factory _DiaryStateLoading() = _$_DiaryStateLoading;
}

abstract class _$DiaryStateLoadedCopyWith<$Res> {
  factory _$DiaryStateLoadedCopyWith(
          _DiaryStateLoaded value, $Res Function(_DiaryStateLoaded) then) =
      __$DiaryStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Test> diaries});
}

class __$DiaryStateLoadedCopyWithImpl<$Res>
    extends _$DiaryStateCopyWithImpl<$Res>
    implements _$DiaryStateLoadedCopyWith<$Res> {
  __$DiaryStateLoadedCopyWithImpl(
      _DiaryStateLoaded _value, $Res Function(_DiaryStateLoaded) _then)
      : super(_value, (v) => _then(v as _DiaryStateLoaded));

  @override
  _DiaryStateLoaded get _value => super._value as _DiaryStateLoaded;

  @override
  $Res call({
    Object diaries = freezed,
  }) {
    return _then(_DiaryStateLoaded(
      diaries == freezed ? _value.diaries : diaries as List<Test>,
    ));
  }
}

class _$_DiaryStateLoaded implements _DiaryStateLoaded {
  const _$_DiaryStateLoaded(this.diaries) : assert(diaries != null);

  @override
  final List<Test> diaries;

  @override
  String toString() {
    return 'DiaryState.loaded(diaries: $diaries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiaryStateLoaded &&
            (identical(other.diaries, diaries) ||
                const DeepCollectionEquality().equals(other.diaries, diaries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(diaries);

  @override
  _$DiaryStateLoadedCopyWith<_DiaryStateLoaded> get copyWith =>
      __$DiaryStateLoadedCopyWithImpl<_DiaryStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result loaded(List<Test> diaries),
    @required Result error(),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(diaries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result loaded(List<Test> diaries),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(diaries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_DiaryStateInitial value),
    @required Result loading(_DiaryStateLoading value),
    @required Result loaded(_DiaryStateLoaded value),
    @required Result error(_DiaryStateError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_DiaryStateInitial value),
    Result loading(_DiaryStateLoading value),
    Result loaded(_DiaryStateLoaded value),
    Result error(_DiaryStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DiaryStateLoaded implements DiaryState {
  const factory _DiaryStateLoaded(List<Test> diaries) = _$_DiaryStateLoaded;

  List<Test> get diaries;
  _$DiaryStateLoadedCopyWith<_DiaryStateLoaded> get copyWith;
}

abstract class _$DiaryStateErrorCopyWith<$Res> {
  factory _$DiaryStateErrorCopyWith(
          _DiaryStateError value, $Res Function(_DiaryStateError) then) =
      __$DiaryStateErrorCopyWithImpl<$Res>;
}

class __$DiaryStateErrorCopyWithImpl<$Res>
    extends _$DiaryStateCopyWithImpl<$Res>
    implements _$DiaryStateErrorCopyWith<$Res> {
  __$DiaryStateErrorCopyWithImpl(
      _DiaryStateError _value, $Res Function(_DiaryStateError) _then)
      : super(_value, (v) => _then(v as _DiaryStateError));

  @override
  _DiaryStateError get _value => super._value as _DiaryStateError;
}

class _$_DiaryStateError implements _DiaryStateError {
  const _$_DiaryStateError();

  @override
  String toString() {
    return 'DiaryState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DiaryStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result loaded(List<Test> diaries),
    @required Result error(),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result loaded(List<Test> diaries),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(_DiaryStateInitial value),
    @required Result loading(_DiaryStateLoading value),
    @required Result loaded(_DiaryStateLoaded value),
    @required Result error(_DiaryStateError value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(_DiaryStateInitial value),
    Result loading(_DiaryStateLoading value),
    Result loaded(_DiaryStateLoaded value),
    Result error(_DiaryStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DiaryStateError implements DiaryState {
  const factory _DiaryStateError() = _$_DiaryStateError;
}
