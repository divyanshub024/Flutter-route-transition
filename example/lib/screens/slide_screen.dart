import 'package:flutter/material.dart';
import 'package:flutter_route_transition/flutter_route_transition.dart';

import '../main.dart';

class SlideScreen extends StatelessWidget {
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
              child: Text('SlideRightTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideRightRoute(page: Screen2())),
            ),
            RaisedButton(
              child: Text('SlideLeftTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideLeftRoute(page: Screen2())),
            ),
            RaisedButton(
              child: Text('SlideTopTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideTopRoute(page: Screen2())),
            ),
            RaisedButton(
              child: Text('SlideBottomTransition'),
              onPressed: () =>
                  Navigator.push(context, SlideBottomRoute(page: Screen2())),
            ),
          ],
        ),
      ),
    );
  }
}
