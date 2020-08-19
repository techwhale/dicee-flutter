import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

random() {
  var rng = new Random();
  return rng.nextInt(6) + 1;
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDicenumber = 5, rightDiceButton = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$leftDicenumber.png'),
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceButton.png'),
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
            ),
          )
        ],
      ),
    );
  }

  void rollDice() {
    leftDicenumber = random();
    rightDiceButton = random();
  }
}
