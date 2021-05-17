import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftNumber = 1;
  int rightNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('dice app'),
        backgroundColor: Colors.blue[700],
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      changeNumber();
                    },
                    child: Image.asset('images/dicee/dice$leftNumber.png'))),
            Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      changeNumber();
                    },
                    child: Image.asset('images/dicee/dice$rightNumber.png')))
          ],
        ),
      ),
    );
  }

  void changeNumber() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rightNumber = Random().nextInt(6) + 1;
    });
  }
}
