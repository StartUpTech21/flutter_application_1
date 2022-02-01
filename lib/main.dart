import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SIDAFA - Demo Sidebar (DRAWER)"),
        backgroundColor: Colors.blue,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Widi Arrohman"),
              accountEmail: new Text("widiarrohman1234@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    "https://lh3.googleusercontent.com/a-/AOh14Ggpk7JbeThJiwzfpVSQawSfO16zhHtFT7PJrLPw7Q=s288-p-rw-no"),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(
                      "https://thumbs.dreamstime.com/b/zoom-background-colors-light-sparks-91393740.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new ListTile(
              title: new Text("Beranda"),
              trailing: new Icon(Icons.home),
            ),
            new ListTile(
              title: new Text("Santri"),
              trailing: new Icon(Icons.account_circle_outlined),
            ),
            new ListTile(
              title: new Text("setting"),
              trailing: new Icon(Icons.settings),
            ),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: new Container(),
    );
  }
}
