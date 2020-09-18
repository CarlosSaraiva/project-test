import 'package:flutter/material.dart';
import 'package:miccional_app/app/shared/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';

class TutorialPage extends StatelessWidget {
  final color;
  final mainText;
  final route;
  final onPress;

  const TutorialPage(
      {Key key, this.color, this.mainText, this.route, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
      color: Color(0xfafafa),
      mainText: 'Tutorial',
      buttonText: 'Go to MAIN',
      route: '/main',
      onPress: () => context.navigator.push('/main'),
    );
  }
}
