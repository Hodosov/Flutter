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
    return Row(children: <Widget>[
      IconButton(
        icon: (_isFavorite
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border)),
        onPressed: _toggleFavorite,
        color: Colors.red[500],
      ),
      SizedBox(
        width: 40,
        child: Text('$_favoriteCount'),
      )
    ]);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Япония, Старшая Некома'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: _buidRating(),
                    margin: const EdgeInsets.all(10),
                  ),
                  Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: _buildAction())),
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildDescription(),
                  )
                ],
              ),
            ),
          ),
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
          elevation: 5,
          child: Image.asset(
            'assets/images/teemo.jpg',
            fit: BoxFit.contain,
          ),
        ),
      );

  Widget _buidRating() => ListTile(
        title: const Text(
          'Teemo',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        subtitle: const Text("Япония, Старшая Некома"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[FavoriteWidget()],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButton('Rate', Icons.star, Colors.black),
          _buildButton('Position', Icons.radio_button_checked, Colors.black),
          _buildButton('Lvl', Icons.school, Colors.black),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w400, color: color),
          )
        ],
      );

  Widget _buildDescription() => const Text(
        "Teemo throws an explosive poisonous trap using one of the mushrooms stored in his pack. If an enemy steps on the trap, it will release a poisonous cloud, slowing enemies and damaging them over time. If Teemo throws a mushroom onto another mushroom it will bounce, gaining additional range.",
        softWrap: true,
        style: TextStyle(fontSize: 16),
      );
}
