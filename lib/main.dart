import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int sound) async {
    AudioPlayer player = AudioPlayer();
    player.play(AssetSource('note$sound.wav'));
  }

  Widget buildKey(int soundNum, MaterialColor btnColor, String btnNote) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(btnColor),
        ),
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(
          btnNote,
        ),
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
              buildKey(1, Colors.red, 'Do'),
              buildKey(2, Colors.orange, 'Re'),
              buildKey(3, Colors.green, 'Mi'),
              buildKey(4, Colors.cyan, 'Fa'),
              buildKey(5, Colors.yellow, 'Sol'),
              buildKey(6, Colors.blue, 'La'),
              buildKey(7, Colors.purple, 'si'),
            ],
          ),
        ),
      ),
    );
  }
}
