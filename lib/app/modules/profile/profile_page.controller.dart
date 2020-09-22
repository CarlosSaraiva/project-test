import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:miccional_app/app/shared/interfaces/i_use_case.dart';
import 'package:miccional_app/app/shared/use_cases/get_preferences.dart';
import 'package:miccional_app/app/shared/use_cases/save_locale.dart';
import 'package:mobx/mobx.dart';
import 'package:easy_localization/easy_localization.dart';

part 'profile_page.controller.g.dart';

@injectable
class ProfilePageController extends _ProfilePageControllerBase
    with _$ProfilePageController {
  SaveLocaleUseCase saveLocaleUseCase;
  GetPreferencesUseCase getPreferencesUseCase;

  ProfilePageController(this.saveLocaleUseCase, this.getPreferencesUseCase)
      : super(saveLocaleUseCase, getPreferencesUseCase);
}

abstract class _ProfilePageControllerBase with Store {
  SaveLocaleUseCase saveLocaleUseCase;
  GetPreferencesUseCase getPreferencesUseCase;
  ReactionDisposer disposeAutoRun;

  _ProfilePageControllerBase(
      this.saveLocaleUseCase, this.getPreferencesUseCase);

  Map<int, String> toggleList = {0: 'en_US', 1: 'pt_BR'};

  @observable
  String locale;

  @action
  fetchPreferences() {
    final preferences = getPreferencesUseCase(NoParams())
        .fold((error) => null, (preferences) => preferences);

    this.locale = preferences.locale;
  }

  @computed
  get isSelected {
    switch (locale) {
      case 'pt_BR':
        return [false, true];
        break;
      case 'en_US':
        return [true, false];
        break;
      default:
        return [false, false];
    }
  }

  @action
  void changePreference(int index, BuildContext context) {
    saveLocaleUseCase(Params(locale: toggleList[index]));
    Locale locale = Locale(
        toggleList[index].split('_')[0], toggleList[index].split('_')[1]);
    this.locale = toggleList[index];
    context.locale = locale;
  }
}
