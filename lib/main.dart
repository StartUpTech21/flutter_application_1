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
          child: new Text("SIDAFA-List View"),
        ),
      ),
      body: new ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          new ListViewData(
              gambar: "images/user.png", username: "user1", IdSantri: "01"),
          new ListViewData(
              gambar: "images/user.png", username: "user1", IdSantri: "01"),
          new ListViewData(
              gambar: "images/user.png", username: "user1", IdSantri: "01"),
        ],
      ),
    );
  }
}

class ListViewData extends StatelessWidget {
  var gambar;
  var username;
  var IdSantri;
  ListViewData({this.gambar, this.username, this.IdSantri});

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: EdgeInsets.all(20.0),
        child: new Center(
          child: new Row(
            children: <Widget>[
              new Image.asset(
                gambar,
                width: 150.0,
              ),
              new Container(
                padding: EdgeInsets.all(10.0),
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        IdSantri,
                        style: new TextStyle(fontSize: 20.0),
                      ),
                      new Text(
                        username,
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
