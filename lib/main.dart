import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "SIDAFA Aplication",
    home: new Home(
      data: new List<String>.generate(300, (i) => "ini data ke $i"),
    ),
  ));
}

class Home extends StatelessWidget {
  // const Home({Key? key}) : super(key: key);

  final List<String> data;
  Home({required this.data});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text("SIDAFA-List View"),
        ),
      ),
      body: new Container(
        child: new ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return new ListTile(
                leading: new Icon(Icons.widgets),
                title: new Text("${data[index]}"),
              );
            }),
      ),
    );
  }
}
