class Preferences {
  String locale;

  Preferences({this.locale});

  Map<String, dynamic> toMap() {
    return {
      'locale': this.locale,
    };
  }
}
