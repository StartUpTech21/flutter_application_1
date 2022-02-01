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
        backgroundColor: Colors.green,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Widi Arrohman"),
              accountEmail: new Text("widiarrohman1234@gmail.com"),
              currentAccountPicture: new Image(
                image: new NetworkImage(
                    "https://lh3.googleusercontent.com/a-/AOh14Ggpk7JbeThJiwzfpVSQawSfO16zhHtFT7PJrLPw7Q=s288-p-rw-no"),
              ),
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
