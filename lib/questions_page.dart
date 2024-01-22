import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Cubit/quizModel.dart';

class QuizPage extends StatelessWidget {
  final int x;
  const QuizPage({super.key, required this.x});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizModel(x),
      child: Builder(
        builder: (context) {
          final quiz = context.watch<QuizModel>();
          Map<String, dynamic> questionMap = quiz.getCurrentQuestionMap();
          return SafeArea(
            child: Scaffold(
              floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  quiz.isFirstQuestion()
                      ? const Text("")
                      : FloatingActionButton(
                          heroTag: "1",
                          onPressed: () {
                            quiz.prevQuestion();
                          },
                          child: const Text("Prev"),
                        ),
                  const Spacer(),
                  quiz.isLastQuestion()
                      ? FloatingActionButton(
                          heroTag: "2",
                          onPressed: () {
                            int x = quiz.checkIsAllQuestionAnswered();
                            switch (x) {
                              case -1:
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text("Your Degree"),
                                    content: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Your percentage of passing the quiz ${quiz.getQuizResult()} %",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Number of correct answers : ${quiz.getNumberOfTrueAnswers()}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "Number of wrong answers : ${quiz.getNumberOfWrongAnswers()}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pushNamed("/");
                                        },
                                        child: const Text("Try Another Quiz"),
                                      ),
                                    ],
                                  ),
                                );
                                break;
                              default:
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text(
                                        "Please Answer All Questions"),
                                    content: Text(
                                      "You must answer all questions before submitting.\nPlease check question number ${x + 1}",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("OK"),
                                      ),
                                    ],
                                  ),
                                );
                            }
                          },
                          child: const Text("Submit"),
                        )
                      : FloatingActionButton(
                          heroTag: "1",
                          onPressed: () {
                            quiz.nextQuestion();
                          },
                          child: const Text("Next"),
                        ),
                  const Spacer(),
                ],
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      questionMap["Question"],
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Builder(builder: (context) {
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 10),
                        itemCount: questionMap["options"].length,
                        itemBuilder: (context, index) => RadioListTile<int>(
                          title: Text(
                            questionMap["options"][index],
                            style: TextStyle(fontSize: 18),
                          ),
                          value: index,
                          groupValue: questionMap["selectedAnswer"],
                          onChanged: (value) {
                            quiz.changeValue(value!);
                          },
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
