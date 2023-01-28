import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.purple,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    int leftDiceValue = Random().nextInt(6) + 1;

    int rightDiceValue = Random().nextInt(6) + 1;

    void set() {
      setState(() {
        leftDiceValue = Random().nextInt(6) + 1;

        rightDiceValue = Random().nextInt(6) + 1;
      });
    }

    ;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                set();
              },
              child: Image.asset('images/dice$leftDiceValue.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                set();
              },
              child: Image.asset('images/dice$rightDiceValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
