import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded makeKeys({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              makeKeys(color: Colors.red, soundNumber:1),
              makeKeys(color: Colors.green, soundNumber:2),
              makeKeys(color: Colors.blue, soundNumber:3),
              makeKeys(color: Colors.yellow, soundNumber:4),
              makeKeys(color: Colors.orange, soundNumber:5),
              makeKeys(color: Colors.teal, soundNumber:6),
              makeKeys(color: Colors.blueGrey, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
