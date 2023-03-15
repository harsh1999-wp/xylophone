import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

Expanded buildkey({MaterialColor color, int soundnumber}) {
  return Expanded(
    child: TextButton(
      onPressed: () {
        Playsound();
        //here we need to play sound from Api
      },
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(color)),
    ),
  );
}

void Playsound() {
  // bulid Api here
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, soundnumber: 1),
              buildkey(color: Colors.yellow, soundnumber: 1),
              buildkey(color: Colors.green, soundnumber: 1),
              buildkey(color: Colors.blue, soundnumber: 1),
              buildkey(color: Colors.orange, soundnumber: 1),
              buildkey1(),
            ],
          ),
        ),
      ),
    );
  }
}
