import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/quizModel.dart';

class switch_q extends StatelessWidget {
  const switch_q({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: () =>Navigator.of(context).pushNamed("/quiz_page",arguments: 1),
            child: Text("Country Quiz")),
        ElevatedButton(
            onPressed: () =>Navigator.of(context).pushNamed("/quiz_page",arguments: 2),

            child: Text("Country Quiz")),
        ElevatedButton(
            onPressed: ()=>Navigator.pushNamed(context, "/quis_page", arguments: 3),
            child: Text("Country Quiz")),
      ]),
    );
  }
}
