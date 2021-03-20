import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        body: MagicBody(),
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything!'),
          ),
        ),
      ),
    ),
  );
}

class MagicBody extends StatefulWidget {
  @override
  _MagicBodyState createState() => _MagicBodyState();
}

class _MagicBodyState extends State<MagicBody> {
  int magicBallNumber = 1;

  void changeBall() {
    setState(
      () {
        magicBallNumber = Random().nextInt(4) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                changeBall();
              },
              child: Image.asset('images/ball$magicBallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
