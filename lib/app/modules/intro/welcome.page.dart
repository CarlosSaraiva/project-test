import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:miccional_app/app/shared/widgets/widgets.dart';

class WelcomePage extends StatelessWidget {
  final color;
  final mainText;
  final route;
  final onPress;

  const WelcomePage(
      {Key key, this.color, this.mainText, this.route, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
      color: Colors.blue,
      mainText: 'Welcome',
      buttonText: 'Go to MAIN',
      route: '/tutorial',
      onPress: () => context.navigator.push('/tutorial'),
    );
  }
}
