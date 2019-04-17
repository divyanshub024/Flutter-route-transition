import 'package:flutter/material.dart';
import 'package:route_transition/main.dart';
import 'package:route_transition/transitions/size_route.dart';

class SizeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('SizeTransition'),
          onPressed: () => Navigator.push(context, SizeRoute(page: Screen2())),
        ),
      ),
    );
  }
}
