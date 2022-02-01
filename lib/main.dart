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
  String teks = "";

  TextEditingController controllerInput = new TextEditingController();
  TextEditingController controllerAlert = new TextEditingController();
  TextEditingController controllerSnackBar = new TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldstate =
      new GlobalKey<ScaffoldState>();

  void _snackbar(String str) {
    if (str.isEmpty) return;
    _scaffoldstate.currentState!.showSnackBar(new SnackBar(
      content: new Text(
        str,
        style: new TextStyle(fontSize: 20.0),
      ),
      duration: new Duration(seconds: 3),
    ));
  }

  void _alertdialog(String str) {
    if (str.isEmpty) return;
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(
        str,
        style: new TextStyle(fontSize: 20.0),
      ),
      actions: <Widget>[
        new RaisedButton(
          color: Colors.purple,
          child: new Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldstate,
        appBar: new AppBar(
          title: new Text("INPUT TEXT, ALERT DIALOG & SNACKBAR"),
          backgroundColor: Colors.purple,
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new TextField(
                controller: controllerInput,
                decoration: new InputDecoration(hintText: "Tulis disini"),
                // onChanged
                onSubmitted: (String str) {
                  setState(() {
                    teks = str + '\n' + teks;
                    controllerInput.text = "";
                  });
                },
              ),
              new Text(
                teks,
                style: new TextStyle(fontSize: 20.0),
              ),
              new TextField(
                controller: controllerAlert,
                decoration: new InputDecoration(hintText: "Tulis untuk alert"),
                // onChanged
                onSubmitted: (String str) {
                  _alertdialog(str);
                  controllerAlert.text = "";
                },
              ),
              new TextField(
                controller: controllerSnackBar,
                decoration:
                    new InputDecoration(hintText: "Tulis untuk snackbar"),
                // onChanged
                onSubmitted: (String str) {
                  _snackbar(str);
                  controllerSnackBar.text = "";
                },
              ),
            ],
          ),
        ));
  }
}
