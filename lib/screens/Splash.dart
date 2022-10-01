import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lab_10/Home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.brown.shade100,
        Colors.brown.shade200,
        Colors.brown.shade300,
        Colors.brown.shade200,
        Colors.brown.shade100,
      ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Image(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2017/02/17/15/25/quiz-2074324_1280.png"))
        ],
      ),
    );
  }
}
