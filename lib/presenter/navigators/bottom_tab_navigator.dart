import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:miccional_app/presenter/routers/diaries_router.gr.dart';
import 'package:miccional_app/presenter/routers/profile_router.gr.dart';
import 'package:miccional_app/presenter/routers/records_router.gr.dart';
import 'package:miccional_app/presenter/routers/tips_router.gr.dart';
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
          ExtendedNavigator(router: RecordsRouter()),
          ExtendedNavigator(router: DiariesRouter()),
          ExtendedNavigator(router: TipsRouter()),
          ExtendedNavigator(router: ProfileRouter()),
        ],
      ),
      // bottomNavigationBar: CustomBottomAppBar(
      //   onTap: _onTap,
      // ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              onTap: _onTap,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.orange,
                  label: 'Registros',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.note),
                  backgroundColor: Colors.black,
                  label: 'Diarios',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.water_damage),
                  label: 'Dicas',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Perfil',
                )
              ],
            ),
          )),
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
