import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Sidafa Aplication",
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("card & Parsing"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(),
            new CardSaya(),
            new CardSaya(),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              Icons.home,
              size: 50.0,
              color: Colors.brown,
            ),
            new Text(
              "home",
              style: new TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
