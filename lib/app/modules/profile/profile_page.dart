import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:miccional_app/app/core/di/injectable.dart';
import 'package:miccional_app/app/modules/profile/profile_page.controller.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatefulWidget {
  final color;
  final mainText;
  final route;
  final onPress;

  const ProfilePage(
      {Key key, this.color, this.mainText, this.route, this.onPress})
      : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final controller = getIt<ProfilePageController>();

  @override
  void initState() {
    super.initState();
    controller.fetchPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('profile-page.title').tr(),
        ),
        body: Column(
          children: [
            ToggleButtons(
              children: [
                Text('ENGLISH'),
                Text('PORTUGUESE'),
              ],
              onPressed: (selected) {
                controller.changePreference(selected, context);
              },
              isSelected: controller.isSelected,
            )
          ],
        ),
      ),
    );
  }
}
