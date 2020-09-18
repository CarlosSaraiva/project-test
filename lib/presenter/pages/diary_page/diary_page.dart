import 'package:flutter/material.dart';
import 'package:miccional_app/presenter/widgets/test_page_builder/test_page_builder.dart';

class DiaryPage extends StatelessWidget {
  final color;
  final mainText;
  final route;
  final onPress;

  const DiaryPage(
      {Key key, this.color, this.mainText, this.route, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TestPage(
      color: Color(0xfafafa),
      mainText: 'Resumo Diario',
      route: '',
      onPress: () => {},
    );
  }
}
