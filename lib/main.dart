import 'package:first_flutter_project/row_column.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(primarySwatch: Colors.amber),
      // home: HomePage(),
      home: MyRowColumn()
    );
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
