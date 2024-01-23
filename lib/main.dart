import 'package:flutter/material.dart';
import 'package:quiz/questions_page.dart';
import 'package:quiz/select_quiz_page.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      home: SelectQuizPage(),
    );
  }
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SelectQuizPage());
      case '/quiz_page':
        final args = settings.arguments;
        return MaterialPageRoute(builder: (_) => QuizPage( QuestionsList: args as List<Map<String,dynamic>>));
      default:
        return MaterialPageRoute(builder: (_) => const SelectQuizPage());
    }
  }
}
