import 'package:flutter/material.dart';

class switch_q extends StatelessWidget {
  const switch_q({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/quis_page", arguments: 1);
            },
            child: Text("Country Quiz")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/quis_page", arguments: 2);
            },
            child: Text("Country Quiz")),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/quis_page", arguments: 3);
            },
            child: Text("Country Quiz")),
      ]),
    );
  }
}
