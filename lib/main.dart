import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Xylophone(),
  ));
}

class Xylophone extends StatelessWidget {

  void playSound(int? n){
    final player = new AudioCache();
    player.play('note$n.wav');
  }

  Widget buildKey({Color? colour,int? n}){
    return Expanded(
      child: TextButton(
        child: Container(
          color: colour,
        ),
        onPressed: (){
          playSound(n);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Xylophone'),
      // ),
      body: SafeArea(
        // top: false,
        left: false,
        right: false,
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              buildKey(colour: Colors.red, n: 1),
              buildKey(colour: Colors.orange, n: 2),
              buildKey(colour: Colors.yellow, n: 3),
              buildKey(colour: Colors.green, n: 4),
              buildKey(colour: Colors.blue, n: 5),
              buildKey(colour: Colors.indigo, n: 6),
              buildKey(colour: Colors.purple, n: 7),
            ],
          ),
        ),
      ),

    );
  }
}
