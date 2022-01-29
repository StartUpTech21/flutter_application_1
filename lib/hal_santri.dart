import 'package:flutter/material.dart';

class Santri extends StatelessWidget {
  // const Headset({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "Santri",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Image.asset(
              "images/user.png",
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
