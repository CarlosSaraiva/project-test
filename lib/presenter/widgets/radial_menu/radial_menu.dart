import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;
import 'dart:math';
import 'package:auto_route/auto_route.dart';

class RadialMenu extends StatefulWidget {
  @override
  _RadialMenuState createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 100), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return RadialAnimation(controller: controller);
  }
}

class RadialAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> translation;
  final Animation<double> rotation;

  RadialAnimation({Key key, this.controller})
      : scale = Tween<double>(
          begin: 1,
          end: 0.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.fastOutSlowIn,
          ),
        ),
        translation = Tween<double>(
          begin: 0.0,
          end: 100.0,
        ).animate(
          CurvedAnimation(parent: controller, curve: Curves.linear),
        ),
        rotation = Tween<double>(
          begin: 0.0,
          end: 360.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.3,
              0.9,
              curve: Curves.decelerate,
            ),
          ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, builder) {
        return Container(
          height: 500,
          child: Stack(
            alignment: Alignment(0, 0.85),
            children: [
              _buildButton(
                180,
                color: Colors.red,
                icon: Icons.ac_unit_sharp,
              ),
              _buildButton(
                270,
                color: Colors.green,
                icon: Icons.access_alarm,
                onPressed: () {
                  context.rootNavigator.push('/survey');
                },
              ),
              _buildButton(
                0,
                color: Colors.orange,
                icon: Icons.accessible_forward,
              ),
              Transform.scale(
                scale: scale.value - 1.0,
                child: FloatingActionButton(
                  child: Icon(Icons.close),
                  onPressed: _close,
                  heroTag: null,
                  backgroundColor: Colors.red,
                ),
              ),
              Transform.scale(
                scale: scale.value,
                child: FloatingActionButton(
                  child: Icon(Icons.open_with),
                  heroTag: null,
                  onPressed: _open,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _open() {
    controller.forward();
  }

  _close() {
    controller.reverse();
  }

  _buildButton(double angle, {Color color, IconData icon, Function onPressed}) {
    final double rad = math.radians(angle);

    return Transform(
        transform: Matrix4.identity()
          ..translate(
              (translation.value) * cos(rad), (translation.value) * sin(rad)),
        child: FloatingActionButton(
          onPressed: () {
            onPressed();
          },
          child: Icon(icon),
          heroTag: null,
          backgroundColor: color,
        ));
  }
}
