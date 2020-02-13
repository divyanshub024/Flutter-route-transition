import 'package:flutter/material.dart';
import 'package:flutter_route_transition/flutter_route_transition.dart';

import '../main.dart';

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
