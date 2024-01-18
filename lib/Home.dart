import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizModel({
        "q": "Q1",
        "options": ["op1", "op2", "op3"],
        "answer": 0,
        "selectedAnswer": 0
      }),
      child: MaterialApp(home: quizPage()),
    );
  }
}

class quizPage extends StatefulWidget {
  const quizPage({super.key});

  @override
  State<quizPage> createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  @override
  Widget build(BuildContext context) {
    final quiz = BlocProvider.of<QuizModel>(context);
    bool q = false;
    return Scaffold(
      body: Builder(builder: (context) {
        return Column(
          children: [
            Text(quiz.state["q"]),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: quiz.state["options"].length,
                itemBuilder: (context, index) => RadioListTile<int>(
                  title: Text(quiz.state["options"][index]),
                  value: index,
                  groupValue: int.parse(() {
                    print(quiz.state["selectedAnswer"]);
                    return quiz.state["selectedAnswer"];
                  }.toString()),
                  onChanged: (value) {
                    print(value);
                    quiz.changevalue(value!);
                  },
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class QuizModel extends Cubit<Map<String, dynamic>> {
  // List<Map<String, dynamic>> a = [
  //   {
  //     "q": "Q1",
  //     "options": ["op1", "op2", "op3"],
  //     "answer": 0,
  //     "selectedAnswer": 0
  //   }
  // ];

  QuizModel(super.initialState) {}

  void changevalue(int index) {
    final newState = Map.of(state);
    newState["selectedAnswer"] = index;
    print(newState);
    emit(newState);
  }
}
