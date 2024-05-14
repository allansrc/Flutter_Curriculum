import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: XiloPage()));

class XiloPage extends StatelessWidget {
  void playSound(int note) {
    AudioCache player = AudioCache();
    player.loadPath('note$note.wav');
  }

  Expanded buildKey(Color color, int number) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(number);
        },
        style: TextButton.styleFrom(backgroundColor: color),
        child: Icon(Icons.music_note),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(Colors.red, 1),
            buildKey(Colors.orange, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.teal, 4),
            buildKey(Colors.green, 5),
            buildKey(Colors.blue, 6),
            buildKey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
