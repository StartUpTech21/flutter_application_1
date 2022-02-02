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
  String gambar1 =
      "https://lh3.googleusercontent.com/a-/AOh14Ggpk7JbeThJiwzfpVSQawSfO16zhHtFT7PJrLPw7Q=s288-p-rw-no";
  String gambar2 =
      "https://www.nicepng.com/png/detail/257-2579139_create-an-account-with-acudeen-technologies-create-account.png";
  late String backupGambar;

  String nama1 = "Widi Arrohman";
  String nama2 = "User Guest";
  late String backupNama;

  String email1 = "widiarrohman1234@gmail.com";
  String email2 = "guest@gmail.com";
  late String backupEmail;

  void gantiuser() {
    this.setState(() {
      backupGambar = gambar1;
      gambar1 = gambar2;
      gambar2 = backupGambar;

      backupNama = nama1;
      nama1 = nama2;
      nama2 = backupNama;

      backupEmail = email1;
      email1 = email2;
      email2 = backupEmail;
    });
  }

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
              accountName: new Text(nama1),
              accountEmail: new Text(email1),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(gambar1),
              ),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(
                      "https://thumbs.dreamstime.com/b/zoom-background-colors-light-sparks-91393740.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => gantiuser(),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(gambar2),
                  ),
                ),
              ],
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
