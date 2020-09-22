// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_page.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfilePageController on _ProfilePageControllerBase, Store {
  Computed<dynamic> _$isSelectedComputed;

  @override
  dynamic get isSelected =>
      (_$isSelectedComputed ??= Computed<dynamic>(() => super.isSelected,
              name: '_ProfilePageControllerBase.isSelected'))
          .value;

  final _$localeAtom = Atom(name: '_ProfilePageControllerBase.locale');

  @override
  String get locale {
    _$localeAtom.reportRead();
    return super.locale;
  }

  @override
  set locale(String value) {
    _$localeAtom.reportWrite(value, super.locale, () {
      super.locale = value;
    });
  }

  final _$_ProfilePageControllerBaseActionController =
      ActionController(name: '_ProfilePageControllerBase');

  @override
  dynamic fetchPreferences() {
    final _$actionInfo = _$_ProfilePageControllerBaseActionController
        .startAction(name: '_ProfilePageControllerBase.fetchPreferences');
    try {
      return super.fetchPreferences();
    } finally {
      _$_ProfilePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePreference(int index, BuildContext context) {
    final _$actionInfo = _$_ProfilePageControllerBaseActionController
        .startAction(name: '_ProfilePageControllerBase.changePreference');
    try {
      return super.changePreference(index, context);
    } finally {
      _$_ProfilePageControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
locale: ${locale},
isSelected: ${isSelected}
    ''';
  }
}
