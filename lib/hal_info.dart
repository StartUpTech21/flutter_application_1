import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  // const Headset({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "Info",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Image(
                image: new NetworkImage(
                    "https://thumbs.dreamstime.com/z/info-icon-17480077.jpg"),
                width: 200.0)
          ],
        ),
      ),
    );
  }
}
