import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Cubit/quizModel.dart';
import 'package:quiz/questions_page.dart';
import 'package:quiz/switch.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
home: switch_q(),
    );
  }
}
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const switch_q());
      case '/quiz_page':
        final args = settings.arguments;
        return MaterialPageRoute(builder: (_) => QuizPage(x: args as int));
      default:
        return MaterialPageRoute(builder: (_) => const switch_q());
    }
  }
}