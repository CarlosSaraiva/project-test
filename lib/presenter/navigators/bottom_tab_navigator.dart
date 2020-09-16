import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miccional_app/presenter/routers/home_router.gr.dart';
import 'package:miccional_app/presenter/routers/messages_router.gr.dart';
import 'package:miccional_app/presenter/widgets/widgets.dart';

class BottomTabNavigator extends StatefulWidget {
  _BottomTabNavigatorState createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ExtendedNavigator(router: HomeRouter()),
          ExtendedNavigator(router: MessagesRouter())
        ],
      ),
      bottomNavigationBar: CustomBottomAppBar(
        onTap: _onTap,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: RadialMenu(),
    );
  }

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
