import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice_number = 1;
  int right_dice_number = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('images/dice$left_dice_number.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('images/dice$right_dice_number.png')),
          ),
        ],
      ),
    );
  }

  void ChangeDiceFace() {
    setState(() {
      left_dice_number = Random().nextInt(6) + 1;
      right_dice_number = Random().nextInt(6) + 1;
    });
  }
}
