import 'package:flutter/material.dart';

import 'package:quiz/DB/api.dart';

class SelectQuizPage extends StatelessWidget {
  const SelectQuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, //
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    DataBase.getData()[index]["quizName"],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pushNamed(
                    "/quiz_page",
                    arguments: DataBase.getData()[index]["quizData"],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: DataBase.getLengthOfQuizs(),
            ),
          ),
        ],
      ),
    );
  }
}
