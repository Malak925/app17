import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            bottom: TabBar(tabs: [
              Icon(
                Icons.quiz,
              ),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
              Icon(Icons.quiz),
            ]),
            title: Text("Dink your COFFEE"),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.brown.shade100,
              Colors.brown.shade200,
              Colors.brown.shade300,
              Colors.brown.shade200,
              Colors.brown.shade100,
              Colors.brown.shade100,
              Colors.brown.shade200,
              Colors.brown.shade300,
              Colors.brown.shade200,
              Colors.brown.shade100,
              Colors.brown.shade100,
              Colors.brown.shade200,
              Colors.brown.shade300,
              Colors.brown.shade200,
              Colors.brown.shade100,
            ])),
            child: TabBarView(children: [
              Quz(
                  Question: 'what is your name?',
                  Answer1: "malak",
                  Answer2: "Mohammad",
                  Answer3: "Noor",
                  Answer4: "Heba",
                  value1: "malak",
                  value2: "Mohammad",
                  value3: "Noor",
                  value4: "Heba",
                  correctAns: "malak")
            ]),
          ),
        ));
  }
}
