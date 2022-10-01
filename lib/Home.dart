import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lab_10/models/Quiz.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: Text("Do you?"),
      ),
      drawer: Drawer(
          backgroundColor: Colors.brown.shade400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Lets See your English, HERO",
                  style: TextStyle(fontSize: 20),
                ),
                margin: EdgeInsets.symmetric(vertical: 20),
              ),
            ],
          )),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.brown.shade400,
          Colors.pink.shade200,
          Colors.black45
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                "Take the Quiz",
                                style: TextStyle(color: Colors.brown),
                              ),
                              actions: [
                                TextButton.icon(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Quiz();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.quiz,
                                      size: 50,
                                      color: Colors.brown,
                                    ),
                                    label: Text(""))
                              ],
                            );
                          });
                    },
                    child: ListTile(
                      title: Text(
                        "English Quiz",
                        style: TextStyle(fontSize: 30, color: Colors.brown),
                      ),
                      leading: Icon(
                        Ionicons.qr_code_outline,
                        color: Colors.brown,
                        size: 50,
                      ),
                      subtitle: Text("Do you think you're good at english"),
                      trailing: Icon(
                        Ionicons.paper_plane,
                        size: 50,
                        color: Colors.pink,
                      ),
                    )),
              ),
              // GestureDetector(
              //     onTap: () {
              //       showDialog(
              //           context: context,
              //           builder: (context) {
              //             return AlertDialog(
              //               title: Text(
              //                 "Drive a car",
              //                 style: TextStyle(color: Colors.pink),
              //               ),
              //               actions: [
              //                 TextButton.icon(
              //                     onPressed: () {
              //                       Navigator.push(context,
              //                           MaterialPageRoute(builder: (context) {
              //                         return Quiz();
              //                       }));
              //                     },
              //                     icon: Icon(
              //                       Ionicons.car,
              //                       size: 50,
              //                       color: Colors.pink,
              //                     ),
              //                     label: Text(""))
              //               ],
              //             );
              //           });
              //     },
              //     child: ListTile(
              //       title: Text(
              //         "Medium",
              //         style: TextStyle(fontSize: 50, color: Colors.pink),
              //       ),
              //       leading: Icon(
              //         Ionicons.qr_code_outline,
              //         color: Colors.pink,
              //         size: 50,
              //       ),
              //       subtitle: Text(
              //         "Like Driving",
              //         style: TextStyle(color: Colors.pink),
              //       ),
              //       trailing: Icon(
              //         Ionicons.car,
              //         size: 50,
              //         color: Colors.pink,
              //       ),
              //     )),
              // GestureDetector(
              //     onTap: () {
              //       showDialog(
              //           context: context,
              //           builder: (context) {
              //             return AlertDialog(
              //               title: Text("Go to the Gym"),
              //               actions: [
              //                 TextButton.icon(
              //                     onPressed: () {
              //                       Navigator.push(context,
              //                           MaterialPageRoute(builder: (context) {
              //                         return Quiz();
              //                       }));
              //                     },
              //                     icon: Icon(
              //                       Ionicons.barbell,
              //                       size: 50,
              //                       color: Colors.black,
              //                     ),
              //                     label: Text(""))
              //               ],
              //             );
              //           });
              //     },
              //     child: ListTile(
              //       title: Text(
              //         "Hard",
              //         style: TextStyle(fontSize: 50),
              //       ),
              //       leading: Icon(
              //         Ionicons.qr_code_outline,
              //         size: 50,
              //         color: Colors.black,
              //       ),
              //       subtitle: Text(
              //         "Like Going to the gym",
              //         style: TextStyle(color: Colors.black),
              //       ),
              //       trailing: Icon(
              //         Ionicons.barbell,
              //         size: 50,
              //         color: Colors.black,
              //       ),
              //     ))
            ],
          ),
        ),
      ),
      floatingActionButton: Icon(
        Ionicons.footsteps,
        size: 50,
        color: Colors.brown,
      ),
    );
  }
}
