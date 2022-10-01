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
            title: Text("English Quiz"),
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
                  Question:
                      'The Chairman is ill and we will have to ……. the meeting for a few days.',
                  Answer1: "put on",
                  Answer2: "put of",
                  Answer3: "put away",
                  Answer4: "put off",
                  Answer5: "put in",
                  Answer6: "put back",
                  value5: "put in",
                  value6: "put back",
                  value1: "put on",
                  value2: "put of",
                  value3: "put away",
                  value4: "put off",
                  correctAns: "put off"),
              Quz(
                  Question:
                      'The Chairman wnats to .... the phone, focus on the meeting',
                  Answer1: "put on",
                  Answer2: "put of",
                  Answer3: "put away",
                  Answer4: "put off",
                  Answer5: "put in",
                  Answer6: "put back",
                  value5: "put in",
                  value6: "put back",
                  value1: "put on",
                  value2: "put of",
                  value3: "put away",
                  value4: "put off",
                  correctAns: "put away"),
              Quz(
                  Question:
                      'The Chairman is needs to .... his suit for the meeting',
                  Answer1: "put on",
                  Answer2: "put of",
                  Answer3: "put away",
                  Answer4: "put off",
                  Answer5: "put in",
                  Answer6: "put back",
                  value5: "put in",
                  value6: "put back",
                  value1: "put on",
                  value2: "put of",
                  value3: "put away",
                  value4: "put off",
                  correctAns: "put on"),
              Quz(
                  Question: 'The Chairman will ... his keys in the drawer.',
                  Answer1: "put on",
                  Answer2: "put",
                  Answer3: "put away",
                  Answer4: "put off",
                  Answer5: "put in",
                  Answer6: "put back",
                  value5: "put in",
                  value6: "put back",
                  value1: "put on",
                  value2: "put",
                  value3: "put away",
                  value4: "put off",
                  correctAns: "put"),
              Quz(
                  Question:
                      'The Chairman wnats to .... the cord in wall, to charge his phone',
                  Answer1: "put on",
                  Answer2: "put of",
                  Answer3: "put away",
                  Answer4: "put off",
                  Answer5: "put in",
                  Answer6: "put back",
                  value5: "put in",
                  value6: "put back",
                  value1: "put on",
                  value2: "put of",
                  value3: "put away",
                  value4: "put off",
                  correctAns: "put in"),
              Quz(
                  Question:
                      'The Chairman has to .... on the candy for his health',
                  Answer1: "put on",
                  Answer2: "put of",
                  Answer3: "put away",
                  Answer4: "put off",
                  Answer5: "put in",
                  Answer6: "put back",
                  value5: "put in",
                  value6: "put back",
                  value1: "put on",
                  value2: "put of",
                  value3: "put away",
                  value4: "put off",
                  correctAns: "put back"),
            ]),
          ),
        ));
  }
}
