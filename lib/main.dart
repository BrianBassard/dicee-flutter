import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice', style: TextStyle(
            color: Colors.lightBlue
          ),),
          backgroundColor: Colors.white
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                    });
                    leftDiceNumber = Random().nextInt(6) + 1;
                  }, child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
            Expanded(
                child: FlatButton(
                  onPressed: () {
                    print('Right button got pressed');
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
            ),
          ],
        ),
      ),
    );
    Container(
      child: Center(
        child: Row(),
      ),
    );
  }
}

