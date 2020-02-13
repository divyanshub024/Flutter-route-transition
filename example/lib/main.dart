import 'package:flutter/material.dart';

import 'screens/fade_screen.dart';
import 'screens/random_screen.dart';
import 'screens/rotation_screen.dart';
import 'screens/scale_screen.dart';
import 'screens/size_screen.dart';
import 'screens/slide_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Route Transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  final Map<String, Widget> screens = {
    'SlideTransition': SlideScreen(),
    'ScaleTransition': ScaleScreen(),
    'RotationTransition': RotationScreen(),
    'SizeTransition': SizeScreen(),
    'FadeTransition': FadeScreen(),
    'Random': RandomScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: buttons(context),
        ),
      ),
    );
  }

  List<RaisedButton> buttons(context) {
    List<RaisedButton> buttons = List<RaisedButton>();
    screens.forEach(
      (k, v) => buttons.add(
        RaisedButton(
          child: Text(k),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => v)),
        ),
      ),
    );
    return buttons;
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: RaisedButton(
          child: Text('Go Back!'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
