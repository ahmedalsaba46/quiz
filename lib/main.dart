import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Cubit/quizModel.dart';
import 'package:quiz/questions_page.dart';
import 'package:quiz/switch.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final x = ModalRoute.of(context)?.settings.arguments as int;
    return BlocProvider(
      create: (context) => QuizModel(1),
      child: MaterialApp(
        routes: {
          "/": (context) => switch_q(),
          "/quis_page": (context) => quizPage()
        },
      ),
    );
  }
}
