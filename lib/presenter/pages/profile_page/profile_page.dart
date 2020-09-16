import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:miccional_app/presenter/widgets/test_page_builder/test_page_builder.dart';

class ProfilePage extends StatelessWidget {
  final color;
  final mainText;
  final route;
  final onPress;

  const ProfilePage(
      {Key key, this.color, this.mainText, this.route, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
        color: Color(0xfafafa),
        mainText: 'Profile Main Page',
        route: '/',
        onPress: () => context.navigator.push('/slider-page'));
  }
}
