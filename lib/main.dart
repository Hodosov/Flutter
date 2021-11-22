import 'package:first_flutter_project/my_container.dart';
import 'package:first_flutter_project/my_flexible.dart';
import 'package:first_flutter_project/row_column.dart';
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
        theme: ThemeData(primarySwatch: Colors.amber),
        // home: HomePage(),
        home: MyFlex());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Testing'),
        ),
        body: Container(
          child: const Center(
            child: Text('some text'),
          ),
        ));
  }
}
