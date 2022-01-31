import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    title: "SIDAFA Aplication",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List dataJSON;

  var JSON;

  Future<String?> ambildata() async {
    http.Response hasil = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      headers: {"Accept": "application/json"},
    );

    this.setState(() {
      dataJSON = JSON.decode(hasil.body);
    });

    return "Success!";
  }

  @override
  void initState() {
    this.ambildata();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List Data JSON"),
      ),
      body: new ListView.builder(
        itemCount: dataJSON == null ? 0 : dataJSON.length,
        itemBuilder: (context, i) {
          return new Card(
            child: new Text(dataJSON[i]['title']),
          );
        },
      ),
    );
  }
}
