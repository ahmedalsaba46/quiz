import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Cubit/quizModel.dart';

class quizPage extends StatefulWidget {
  const quizPage({super.key});

  @override
  State<quizPage> createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<QuizModel>();
    return Scaffold(
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Text("Prev"),
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Text("Next"),
            ),
          ],
        ),
        body: Builder(builder: (context) {
          return Column(
            children: [
              Text(quiz.state["q"]),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: quiz.state["options"].length,
                  itemBuilder: (context, index) => RadioListTile<int>(
                    title: Container(
                        child: Row(
                      children: [
                        Text(quiz.state["options"][index]),
                      ],
                    )),
                    value: index,
                    groupValue: quiz.state["selectedAnswer"],
                    onChanged: (value) {
                      quiz.changevalue(value!);
                    },
                  ),
                ),
              ),
            ],
          );
        }));
  }
}
