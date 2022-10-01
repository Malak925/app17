import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Future extends StatelessWidget {
  const Future({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Quizes"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 150),
            // margin: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.brown.shade100,
              Colors.brown.shade200,
              Colors.brown.shade300,
              Colors.brown.shade200,
              Colors.brown.shade100,
            ])),
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Math Quiz",
                    style: TextStyle(fontSize: 30, color: Colors.brown),
                  ),
                  leading: Icon(
                    Ionicons.qr_code_outline,
                    color: Colors.brown,
                    size: 50,
                  ),
                  subtitle: Text("Do you think you're good at Math"),
                  trailing: Icon(
                    Ionicons.paper_plane,
                    size: 50,
                    color: Colors.pink,
                  ),
                ),
                ListTile(
                  title: Text(
                    "spanich Quiz",
                    style: TextStyle(fontSize: 30, color: Colors.brown),
                  ),
                  leading: Icon(
                    Ionicons.qr_code_outline,
                    color: Colors.brown,
                    size: 50,
                  ),
                  subtitle: Text("Do you think you're good at Spanish"),
                  trailing: Icon(
                    Ionicons.paper_plane,
                    size: 50,
                    color: Colors.pink,
                  ),
                ),
                ListTile(
                  title: Text(
                    "Turkish Quiz",
                    style: TextStyle(fontSize: 30, color: Colors.brown),
                  ),
                  leading: Icon(
                    Ionicons.qr_code_outline,
                    color: Colors.brown,
                    size: 50,
                  ),
                  subtitle: Text("Do you think you're good at Turkish"),
                  trailing: Icon(
                    Ionicons.paper_plane,
                    size: 50,
                    color: Colors.pink,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
