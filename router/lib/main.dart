import 'package:flutter/material.dart';
import 'package:router/screens/home.dart';
import 'package:router/screens/second.dart';
import 'package:router/screens/third.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'navigation',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new Home(),
        '/second': (BuildContext context) => new Second(),
        '/third': (BuildContext context) => new Third(),

      },
      home: new Home(),
    );
  }
}
