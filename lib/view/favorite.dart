import 'package:flutter/material.dart';

class Favorits extends StatelessWidget {
  const Favorits({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorits"),
      ),
      body: Center(
        child: Text("Favorit page", style: TextStyle(color: Colors.white70)),
      ),
    );
  }
}
