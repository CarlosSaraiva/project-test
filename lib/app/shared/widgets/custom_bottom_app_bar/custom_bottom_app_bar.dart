import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final onTap;

  const CustomBottomAppBar({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      color: Colors.blue,
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () => _onTap(0),
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => _onTap(1),
          ),
        ],
      ),
    );
  }

  void _onTap(int value) {
    onTap(value);
  }
}
