import 'package:flutter/material.dart';
import 'package:route_transition/main.dart';
import 'package:route_transition/transitions/fade_route.dart';

class FadeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: RaisedButton(
          child: Text('FadeTansition'),
          onPressed: () => Navigator.push(context, FadeRoute(page: Screen2())),
        ),
      ),
    );
  }
}
