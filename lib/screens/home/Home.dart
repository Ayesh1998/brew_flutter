import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brew Crew'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
