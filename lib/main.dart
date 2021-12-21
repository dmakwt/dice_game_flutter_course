import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 1;

  int num2 = 1;

  Widget _buildPlayButton() {
    return Container(
      height: 40,
      width: 100,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        child: Text(
          'Play',
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () {
          num1 = Random().nextInt(6) + 1;
          num2 = Random().nextInt(6) + 1;

          setState(() {});
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice game'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/dice_$num1.png',
                    width: 130,
                    height: 130,
                  ),
                  Container(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/dice_$num2.png',
                    width: 130,
                    height: 130,
                  ),
                ],
              ),
              Container(
                height: 10,
              ),
              _buildPlayButton(),
            ],
          ),
        ),
      ),
    );
  }
}
