import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Quz extends StatefulWidget {
  Quz({
    required this.Question,
    required this.Answer1,
    required this.Answer2,
    required this.Answer3,
    required this.Answer4,
    required this.value1,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.correctAns,
  });
  String? correctAns;
  String? Answer1;
  String? Answer2;

  String? Answer3;

  String? Answer4;
  String? Question;
  String? value1 = "";
  String? value2 = "";
  String? value3 = "";
  String? value4 = "";
  String? userAnswer = "put on";

  // String? value= Answer1;

  @override
  State<Quz> createState() => _QuzState();
}

class _QuzState extends State<Quz> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      "https://image.shutterstock.com/image-photo/decision-making-concept-row-question-260nw-80526127.jpg"))),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            widget.Question!,
            style: TextStyle(color: Colors.brown, fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: DropdownButton(
              value: widget.userAnswer,
              items: [
                DropdownMenuItem(
                  child: Text(widget.Answer1!),
                  value: widget.value1,
                ),
                DropdownMenuItem(
                  child: Text(widget.Answer2!),
                  value: widget.value2,
                ),
                DropdownMenuItem(
                  child: Text(widget.Answer3!),
                  value: widget.value3,
                ),
                DropdownMenuItem(
                  child: Text(widget.Answer4!),
                  value: widget.value4,
                ),
              ],
              onChanged: (val) {
                setState(() {
                  widget.userAnswer = val;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: TextButton.icon(
              onPressed: () {
                setState(() {
                  if (widget.userAnswer == widget.correctAns) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Correct Answer!!"),
                            icon: Icon(Ionicons.gift),
                          );
                        });
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("wrong Answer!!"),
                            icon: Icon(Ionicons.battery_dead),
                          );
                        });
                  }
                });
              },
              icon: Icon(
                Icons.check,
                color: Colors.brown,
                size: 50,
              ),
              label: Text(
                "Check answer",
                style: TextStyle(color: Colors.brown, fontSize: 20),
              )),
        )
      ]),
    );
  }
}
