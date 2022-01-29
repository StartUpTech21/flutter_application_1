import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "SIDAFA Aplication",
    home: new Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("SIDAFA"),
        ),
      ),
    );
  }
}
