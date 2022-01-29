import 'package:flutter/material.dart';

class Administrasi extends StatelessWidget {
  // const Headset({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Text(
              "Administrasi",
              style: new TextStyle(fontSize: 30.0),
            ),
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Image(
              image: new NetworkImage(
                  "https://i.pinimg.com/originals/97/26/67/9726674f04c3f3d738ba1f1a4e55cd2d.png"),
              width: 200.0,
            )
          ],
        ),
      ),
    );
  }
}
