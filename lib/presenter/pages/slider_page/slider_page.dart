import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:miccional_app/presenter/widgets/widgets.dart';

class SliderPage extends StatelessWidget {
  final color;
  final mainText;
  final route;
  final onPress;

  const SliderPage(
      {Key key, this.color, this.mainText, this.route, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
        color: Colors.red,
        mainText: 'SLIDER',
        buttonText: "Go to MAIN PAGE",
        route: '/main-page',
        onPress: () => context.navigator.push('/main'));
  }
}
