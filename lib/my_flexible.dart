import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
           Container(
             width: 50,
             color: Colors.red[400],
             child: const Text(
               "Dart!",
               style: TextStyle(
                 fontSize: 30,
                 color: Colors.black54,
               ),
               softWrap: false,
               overflow: TextOverflow.ellipsis,
             ),
           ),
           const Icon(
             Icons.favorite,
             size: 50,
             color: Colors.redAccent,
           ),
           Expanded(child: Image.network("https://static.wikia.nocookie.net/shararam-smeshi/images/e/e9/%D0%9A%D0%B8%D1%81%D0%B0.png/revision/latest?cb=20161019154646&path-prefix=ru"))
          ],
        ),
      ),
    );
  }
}

