import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Sidafa Aplication",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("SIDAFA"),
        ),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Center(
        child: new Text(
          "Selamat datang di aplikasi SIDAFA",
          style: new TextStyle(
              color: Colors.black, fontFamily: "Serif", fontSize: 30.0),
        ),
      ),
    );
  }
}
