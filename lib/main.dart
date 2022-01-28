import 'package:flutter/material.dart';
import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as smartphone;

void main() {
  runApp(MaterialApp(
    title: "Sidafa Aplication",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("SIDAFA"),
        bottom: new TabBar(controller: controller, tabs: <Widget>[
          new Tab(
            icon: new Icon(Icons.home),
            text: "Beranda",
          ),
          new Tab(
            icon: new Icon(Icons.account_circle_outlined),
            text: "Santri",
          ),
          new Tab(
            icon: new Icon(Icons.attach_money),
            text: "Administrasi",
          ),
          new Tab(
            icon: new Icon(Icons.info),
            text: "Info",
          ),
        ]),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headset.Headset(),
          new radio.Radio(),
          new smartphone.Smartphone(),
        ],
      ),
      bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(controller: controller, tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.account_circle_outlined),
            ),
            new Tab(
              icon: new Icon(Icons.attach_money),
            ),
            new Tab(
              icon: new Icon(Icons.info),
            ),
          ])),
    );
  }
}
