import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_10/screens/Splash.dart';

import 'Home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Alkalami'),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}
