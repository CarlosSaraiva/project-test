import 'package:miccional_app/app/domain/entities/preferences.dart';

class PreferencesModel extends Preferences {
  String locale;

  Map<String, dynamic> toMap() {
    return {
      'locale': this.locale,
    };
  }
}
