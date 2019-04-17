import 'package:flutter/material.dart';
import 'package:route_transition/main.dart';
import 'package:route_transition/transitions/rotation_route.dart';

class RotationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('RotationTansition'),
          onPressed: () =>
              Navigator.push(context, RotationRoute(page: Screen2())),
        ),
      ),
    );
  }
}
