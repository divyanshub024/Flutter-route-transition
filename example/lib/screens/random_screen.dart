import 'package:flutter/material.dart';
import 'package:flutter_route_transition/flutter_route_transition.dart';

import '../main.dart';

class RandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('EnterExitSlideTransition'),
              onPressed: () => Navigator.push(context,
                  EnterExitRoute(exitPage: this, enterPage: Screen2())),
            ),
            RaisedButton(
              child: Text('ScaleRotateTransition'),
              onPressed: () =>
                  Navigator.push(context, ScaleRotateRoute(page: Screen2())),
            ),
          ],
        ),
      ),
    );
  }
}
