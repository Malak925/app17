import 'package:flutter/material.dart';

class Quz extends StatefulWidget {
  Quz(
      {required this.Question,
      required this.Answer1,
      required this.Answer2,
      required this.Answer3,
      required this.Answer4});
  String? Answer1;
  String? Answer2;

  String? Answer3;

  String? Answer4;
  String? Question;
  // String value= Answer1!;

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
            value: "answer",
            items: [
              DropdownMenuItem(
                child: Text(widget.Answer1!),
                value: "answer",
              ),
              DropdownMenuItem(child: Text(widget.Answer2!)),
              DropdownMenuItem(child: Text(widget.Answer3!)),
              DropdownMenuItem(child: Text(widget.Answer4!)),
            ],
            onChanged: (val) {
              setState(() {});
            }),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.check),
            label: Text("Check answer"))
      ]),
    );
  }
}
