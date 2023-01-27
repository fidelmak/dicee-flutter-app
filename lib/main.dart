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

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    int leftSided = 1;
    var righSided = 2;

    void click() {
      setState() {
        int l = Random().nextInt(leftSided) + 1;

        print('man');
      }
    }

    ;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                click();
              },
              child: Image.asset('images/dice$leftSided.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print("welcome");
              },
              child: Image.asset('images/dice$righSided.png'),
            ),
          ),
        ],
      ),
    );
  }
}
