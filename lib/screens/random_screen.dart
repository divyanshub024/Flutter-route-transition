import 'package:flutter/material.dart';
import 'package:route_transition/main.dart';
import 'package:route_transition/transitions/enter_exit_route.dart';
import 'package:route_transition/transitions/scale_rotate_route.dart';

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
