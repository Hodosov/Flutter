import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample App",
      theme: ThemeData(primarySwatch: Colors.amber),
      home: PersonWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 42;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('lorem'),
    );
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония, Старшая Некома'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          // _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: const Text('Рейтинг'),
                    margin: const EdgeInsets.all(10),
                  ),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: const Text('button'))),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: Text('description'),
                  )
                ],
              ),
            ),
          ),
        ],
      );

    // Widget _buildTopImage () =>
}
