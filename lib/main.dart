import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp( const XylophoneApp());


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

void playsound(int soundnumber){
  final player = AudioPlayer();
  player.play(AssetSource('note${soundnumber}.wav'));
}

Expanded buildKey({required Color color, required int number, required String label} ){
 return Expanded(child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: color,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Removes border radius for a rectangular shape
                    ),
                ),
                onPressed: (){
                // final player = AudioCache();
                playsound(number);
          
          }, child: Text(
            label,
            style: TextStyle(color: Colors.black),),
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
            children: <Widget>[
              
              buildKey( color:Colors.red, number: 1,label: 'P'),
              buildKey( color:Colors.orange, number: 2,label: 'R'),
              buildKey( color:Colors.yellow, number: 3,label: 'A'),
              buildKey( color:Colors.green, number: 4,label: 'V'),
              buildKey( color:Colors.teal, number: 5,label: 'E'),
              buildKey( color:Colors.blue, number: 6,label: 'E'),
              buildKey( color:Colors.purple, number: 7,label: 'N'),
          
          
    
          
            ],
          ) 
        ),
      ),
    );
  }
}