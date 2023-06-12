import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor:  Colors.blue[100],
        appBar: AppBar(
          title: const Text('Dicee', style: TextStyle(color: Colors.black
          ),
          ),
          
          backgroundColor: Colors.blue[100],
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;

  void changeDiceFace(){
    setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                  
                });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
