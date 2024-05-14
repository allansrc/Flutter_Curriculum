import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Bozoh'),
          backgroundColor: Colors.red,
        ),
        body: BozohPage(),
      ),
    ),
  );
}

class BozohPage extends StatefulWidget {
  @override
  _BozohPageState createState() => _BozohPageState();
}

class _BozohPageState extends State<BozohPage> {
  int leftBozohNumber = 1;
  int rightBozohNumber = 1;

  void changeBozohFace() {
    setState(() {
      leftBozohNumber = Random().nextInt(6) + 1;
      rightBozohNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: TextButton(
            onPressed: changeBozohFace,
            child: Image.asset('images/dice$leftBozohNumber.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: changeBozohFace,
            child: Image.asset('images/dice$rightBozohNumber.png'),
          ),
        ),
      ]),
    );
  }
}
