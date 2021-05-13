import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.greenAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var dicenumber1 = 1;
  var dicenumber2 = 1;
  void diceRoll() {
    setState(() {
      dicenumber1 = Random().nextInt(6) + 1;
      dicenumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                diceRoll();
              },
              child: Image.asset('images/dice$dicenumber1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                diceRoll();
              },
              child: Image.asset('images/dice$dicenumber2.png'),
            ),
          )
        ],
      ),
    );
  }
}
