import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HalHallo(),
  ));
}

class HalHallo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
      child: new Container(
        //id=kotak
        color: Colors.blue[200],
        width: 200.0,
        height: 100.0,
        child: new Center(
          child: new Text(
            "Panca Developer",
            style: new TextStyle(
                color: Colors.black, fontFamily: "Serif", fontSize: 18.0),
          ),
        ),
      ),
    ));
  }
}
