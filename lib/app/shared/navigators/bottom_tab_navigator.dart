import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miccional_app/app/modules/profile/profile_router.gr.dart';
import 'package:miccional_app/app/modules/records/records_router.gr.dart';

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
          ExtendedNavigator(router: RecordsRouter(), key: UniqueKey()),
          ExtendedNavigator(router: ProfileRouter(), key: UniqueKey()),
        ],
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(1),
              topLeft: Radius.circular(1),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: BottomNavigationBar(
              onTap: _onTap,
              currentIndex: _currentIndex,
              showUnselectedLabels: true,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.orange,
                  label: 'Registros',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.note),
                  backgroundColor: Colors.blue,
                  label: 'Diarios',
                ),
              ],
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
