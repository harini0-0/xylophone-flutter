import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded players({Color col, int num}){
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: (){
          playsound(num);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              players(col: Colors.red, num: 1),
              players(col: Colors.orange, num: 2),
              players(col: Colors.yellow, num: 3),
              players(col: Colors.lightGreenAccent, num: 4),
              players(col: Colors.green, num: 5),
              players(col: Colors.blueAccent, num: 6),
              players(col: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
