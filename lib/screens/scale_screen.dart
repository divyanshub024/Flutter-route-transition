import 'package:flutter/material.dart';
import 'package:route_transition/main.dart';
import 'package:route_transition/transitions/scale_route.dart';

class ScaleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('ScaleTransition'),
          onPressed: () => Navigator.push(context, ScaleRoute(page: Screen2())),
        ),
      ),
    );
  }
}
