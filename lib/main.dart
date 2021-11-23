import 'package:first_flutter_project/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quiz App',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: HomePage(),
    );
  }
}

