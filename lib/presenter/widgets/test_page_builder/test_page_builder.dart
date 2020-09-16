import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  final Color color;
  final String mainText;
  final String buttonText;
  final String route;
  final Function onPress;
  final bool showBackButton;

  TestPage(
      {Key key,
      @required this.color,
      @required this.mainText,
      @required this.route,
      @required this.onPress,
      this.showBackButton = true,
      this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mainText),
        automaticallyImplyLeading: showBackButton,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: color,
        child: Column(
          children: [
            Container(
                child: RichText(
              text: TextSpan(
                  text: mainText,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            )),
            RaisedButton(
              onPressed: onPress,
              child: RichText(
                text: TextSpan(
                  text: ' $buttonText ($route)',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
