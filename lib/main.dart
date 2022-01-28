import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Sidafa Aplication",
    home: HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.home),
          title: const Center(
            child: Text("SIDAFA"),
          ),
          actions: const <Widget>[Icon(Icons.search)],
        ),
        body: Column(children: <Widget>[
          const Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
          const Icon(Icons.local_pizza, size: 70.0, color: Colors.red),
          Row(
            children: const <Widget>[
              Icon(Icons.donut_large, size: 70.0, color: Colors.red),
              Icon(Icons.donut_large, size: 70.0, color: Colors.red),
              Icon(Icons.donut_large, size: 70.0, color: Colors.red),
            ],
          ),
          const Icon(Icons.cake, size: 70.0, color: Colors.red),
          const Icon(Icons.cake, size: 70.0, color: Colors.red),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
              Icon(Icons.favorite, size: 70.0, color: Colors.red),
            ],
          ),
          Row(
            children: const <Widget>[
              const Icon(Icons.add, size: 70.0, color: Colors.blue)
            ],
          )
        ]));
  }
}
