import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Center(
            child: Text('I am Lost!'),
          ),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/lost.png'),
          ),
        ),
      ),
    ),
  );
}
