import 'package:flutter_bloc/flutter_bloc.dart';

class QuizModel extends Cubit<Map<String, dynamic>> {
  List<Map<String, dynamic>> questions = [];

  QuizModel(int x) : super({}) {
    switch (x) {
      case 1:
        questions ==
            [
              {
                "q": "What is the capital of Libya?",
                "options": ["Tripoli", "Benghazi", "Misrata"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q": "Which country is located to the east of Libya?",
                "options": ["Egypt", "Tunisia", "Algeria"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q": "Which sea borders Libya to the north?",
                "options": ["Mediterranean Sea", "Red Sea", "Arabian Sea"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q": "What is the official language of Libya?",
                "options": ["Arabic", "English", "French"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q": "Which famous desert is located in southern Libya?",
                "options": ["Sahara Desert", "Gobi Desert", "Atacama Desert"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q": "What is the currency of Libya?",
                "options": ["Libyan Dinar", "Euro", "US Dollar"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q": "Which African mountain range is partly located in Libya?",
                "options": [
                  "Atlas Mountains",
                  "Drakensberg Mountains",
                  "Rwenzori Mountains"
                ],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q":
                    "Which historical city in Libya was known as Oea in ancient times?",
                "options": ["Tripoli", "Benghazi", "Sabratha"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q":
                    "Which Libyan city is known for its Greek and Roman ruins?",
                "options": ["Leptis Magna", "Cyrene", "Ghadames"],
                "answer": 0,
                "selectedAnswer": -1
              },
              {
                "q":
                    "Which Libyan revolutionary leader ruled the country for over four decades?",
                "options": [
                  "Muammar Gaddafi",
                  "Idriss Déby",
                  "Abdel Fattah el-Sisi"
                ],
                "answer": 0,
                "selectedAnswer": -1
              }
            ];
    }
    final newstate = questions[0];
    emit(newstate);
  }

  void changevalue(int index) {
    final newState = Map.of(state);
    newState["selectedAnswer"] = index;

    emit(newState);
  }

  void addQeustion(List<Map<String, dynamic>> x) {
    questions.addAll(x);
  }
}
