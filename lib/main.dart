import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int sound) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
        onPressed: () {
      playSound(sound);

        },
    child: Text('audio'),
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.green, 4),
            buildKey(Colors.teal, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ]),
        ),
      ),
    );
  }
}
