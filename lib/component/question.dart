import 'package:flutter/material.dart';

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
  String? userAnswer = "malak";

  // String? value= Answer1;

  @override
  State<Quz> createState() => _QuzState();
}

class _QuzState extends State<Quz> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        Text(widget.Question!),
        DropdownButton(
            value: widget.userAnswer,
            items: [
              DropdownMenuItem(
                child: Text(widget.Answer1!),
                value: widget.userAnswer,
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
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.check),
            label: Text("Check answer"))
      ]),
    );
  }
}
