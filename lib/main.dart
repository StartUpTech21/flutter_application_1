import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Sidafa Aplication",
    home: HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) => new HalamanSatu(),
      '/HalDua': (BuildContext context) => new HalamanDua(),
    },
  ));
}

class HalamanSatu extends StatelessWidget {
  // get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Music"),
        ),
        body: new Center(
          child: new IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HalDua');
            },
            icon: new Icon(
              Icons.headset,
              size: 50.0,
            ),
          ),
        ));
  }
}

class HalamanDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Speaker"),
        ),
        body: new Center(
          child: new IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HalSatu');
            },
            icon: new Icon(
              Icons.speaker,
              size: 50.0,
              color: Colors.red,
            ),
          ),
        ));
  }
}
