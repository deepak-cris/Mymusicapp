import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildkey(int sountnumber, Color btnclr) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$sountnumber.wav');
        },
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: btnclr,
          onSurface: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.blue),
              buildkey(3, Colors.green),
              buildkey(4, Colors.teal),
              buildkey(5, Colors.yellow),
              buildkey(6, Colors.orange),
              buildkey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
