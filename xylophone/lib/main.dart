import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // function for play sound from audioplayers
  void PlaySound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  // function for building key
  Expanded buildKey({Color color, int note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          PlaySound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(note: 1, color: Colors.red),
                buildKey(note: 2, color: Colors.orange),
                buildKey(note: 3, color: Colors.yellow),
                buildKey(note: 4, color: Colors.green),
                buildKey(note: 5, color: Colors.teal),
                buildKey(note: 6, color: Colors.blue),
                buildKey(note: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
