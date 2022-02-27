import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

//=> is used for single line of statement
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              getButtons(1, Colors.red[900]),
              getButtons(2, Colors.orange[200]),
              getButtons(3, Colors.yellow[500]),
              getButtons(4, Colors.green[900]),
              getButtons(5, Colors.blue[900]),
              getButtons(6, Colors.purple[900]),
              getButtons(7, Colors.deepPurple[900])
            ],
          ),
        ),
      ),
    );
  }

  Widget getButtons(int i, Color j) {
    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: () {
          playSound(Number: i);
        },
        style: TextButton.styleFrom(
          backgroundColor: j,
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  void playSound({int Number}) {
    final AudioCache player = AudioCache();
    // or as a local variable
    final players = AudioCache();
    players.play('note$Number.wav');
  }
}
