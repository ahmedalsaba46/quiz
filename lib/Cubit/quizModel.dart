import 'package:flutter_bloc/flutter_bloc.dart';

class QuizModel extends Cubit<Map<String, dynamic>> {
  List<Map<String, dynamic>> questions = [];
  int currentQuestionIndex =0;

  QuizModel(int x) : super( {}) {
switch (x){
  case 1 : questions=countryQuestions();break;
  case 2 : questions=footballQuestions();break;
}
emit(questions[currentQuestionIndex]);
  }
  Map<String,dynamic>getCurrentQuestionMap()=>state;

  void changeValue(int value) {
    questions[currentQuestionIndex]["selectedAnswer"] =value;
    final newState = Map.of(questions[currentQuestionIndex]);
    emit(newState);
  }
void nextQuestion(){
        final newState = questions[++currentQuestionIndex];
        emit(newState);
}
  void prevQuestion(){
    final newState = questions[--currentQuestionIndex];
    emit(newState);
  }
bool isFirstQuestion()=>currentQuestionIndex == 0;
bool isLastQuestion()=>currentQuestionIndex == questions.length-1;

  int checkIsAllQuestionAnswered(){
    int i=0;
     int result=-1;
     for(;i<questions.length;i++){
        if(questions[i]["selectedAnswer"]==-1){
          result=i;
          currentQuestionIndex=i;
          break;
          }
       }
     i--;
    emit(Map.of(questions[i]));
    return result ;
  }
  double getQuizResult()=> (getNumberOfTrueAnswers()/questions.length)*100;
  int getNumberOfTrueAnswers() => questions.where((element) => element["answer"]==element["selectedAnswer"]).length;
  int getNumberOfWrongAnswers() => getNumberOfTrueAnswers()-questions.length;

List<Map<String,dynamic>>countryQuestions(){
    return   [
      {
        "Question": "What is the capital of Libya?",
        "options": ["Tripoli", "Benghazi", "Misrata"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which country is located to the east of Libya?",
        "options": ["Egypt", "Tunisia", "Algeria"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which sea borders Libya to the north?",
        "options": ["Mediterranean Sea", "Red Sea", "Arabian Sea"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "What is the official language of Libya?",
        "options": ["Arabic", "English", "French"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which famous desert is located in southern Libya?",
        "options": ["Sahara Desert", "Gobi Desert", "Atacama Desert"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "What is the currency of Libya?",
        "options": ["Libyan Dinar", "Euro", "US Dollar"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which African mountain range is partly located in Libya?",
        "options": [
          "Atlas Mountains",
          "Drakensberg Mountains",
          "Rwenzori Mountains"
        ],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question":
        "Which historical city in Libya was known as Oea in ancient times?",
        "options": ["Tripoli", "Benghazi", "Sabratha"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question":
        "Which Libyan city is known for its Greek and Roman ruins?",
        "options": ["Leptis Magna", "Cyrene", "Ghadames"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question":
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
List<Map<String,dynamic>>footballQuestions(){
    return   [
      {
        "Question": "What is the capital of Libya?",
        "options": ["www", "Benghazi", "Misrata"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which country is located to the east of Libya?",
        "options": ["Egypt", "Tunisia", "Algeria"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which sea borders Libya to the north?",
        "options": ["Mediterranean Sea", "Red Sea", "Arabian Sea"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "What is the official language of Libya?",
        "options": ["Arabic", "English", "French"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which famous desert is located in southern Libya?",
        "options": ["Sahara Desert", "Gobi Desert", "Atacama Desert"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "What is the currency of Libya?",
        "options": ["Libyan Dinar", "Euro", "US Dollar"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question": "Which African mountain range is partly located in Libya?",
        "options": [
          "Atlas Mountains",
          "Drakensberg Mountains",
          "Rwenzori Mountains"
        ],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question":
        "Which historical city in Libya was known as Oea in ancient times?",
        "options": ["Tripoli", "Benghazi", "Sabratha"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question":
        "Which Libyan city is known for its Greek and Roman ruins?",
        "options": ["Leptis Magna", "Cyrene", "Ghadames"],
        "answer": 0,
        "selectedAnswer": -1
      },
      {
        "Question":
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

}
