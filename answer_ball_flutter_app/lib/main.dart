import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: AnswerPage(),
  ));
}

class AnswerPage extends StatefulWidget {
  @override
  _AnswerPageState createState() => _AnswerPageState();
}

class _AnswerPageState extends State<AnswerPage> {
  int ballNumber = 1;

  void getAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Bola Macumbada'),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: Center(
        child: TextButton(
          onPressed: getAnswer,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
