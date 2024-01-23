import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/Cubit/quiz_model.dart';

class QuizPage extends StatelessWidget {
   final List<Map<String,dynamic>> QuestionsList;
   QuizPage(  {super.key, required this.QuestionsList});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizModel(QuestionsList),
      child: Builder(
        builder: (context) {
          final quiz = context.watch<QuizModel>();
          Map<String, dynamic> questionMap = quiz.getCurrentQuestionMap();
          return Scaffold(
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                quiz.isFirstQuestion()
                    ? Text("")
                    : FloatingActionButton(
                        // heroTag: "1",
                        onPressed: () {
                          quiz.prevQuestion();
                        },
                        child: const Text("Prev"),
                      ),
                const Spacer(),
                quiz.isLastQuestion()
                    ? FloatingActionButton(

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
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                            "Your percentage of passing the quiz ${quiz.getQuizResult()} %"),
                                        Text(
                                            "Number of correct answers : ${quiz.getNumberOfTrueAnswers()}"),
                                        Text(
                                            "Number of wrong answers : ${quiz.getNumberOfWrongAnswers()}")
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
                                  title:
                                      const Text("Please Answer All Question"),
                                  content: Text(
                                      "you must answer all question before submit \n please check question number ${x + 1}"),
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
              children: [Spacer(flex: 1,),
                Text(questionMap["Question"],style: TextStyle(fontSize: 30)),
                Expanded(flex: 4,
                  child: Builder(builder: (context) {
                    return ListView.separated(
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: questionMap["options"].length,
                      itemBuilder: (context, index) => RadioListTile<int>(
                        title: Row(
                          children: [
                            Text(questionMap["options"][index]),
                          ],
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
          );
        },
      ),
    );
  }
}
