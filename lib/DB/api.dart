final class DataBase {
 static List<Map<String,dynamic>> Data = [
   {
     "quizName":"Quiz About Libya",
     "quizData" : [
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
     ]
   },
   {
     "quizName": "Football Quiz",
     "quizData": [
       {
         "Question": "Which country won the first FIFA World Cup in 1930?",
         "options": ["Uruguay", "Argentina", "Brazil"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Who is the all-time leading goalscorer in the FIFA World Cup?",
         "options": ["Cristiano Ronaldo", "Lionel Messi", "Miroslav Klose"],
         "answer": 2,
         "selectedAnswer": -1
       },
       {
         "Question": "Which team has won the most UEFA Champions League titles?",
         "options": ["Real Madrid", "Barcelona", "Manchester United"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Who is the all-time leading goalscorer in the UEFA Champions League?",
         "options": ["Cristiano Ronaldo", "Lionel Messi", "Raúl"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Which country has won the most Copa América titles?",
         "options": ["Argentina", "Uruguay", "Brazil"],
         "answer": 2,
         "selectedAnswer": -1
       },
       {
         "Question": "Who is the all-time leading goalscorer in the Copa América?",
         "options": ["Lionel Messi", "Pelé", "Nunes"],
         "answer": 2,
         "selectedAnswer": -1
       },
       {
         "Question": "Which team has won the most African Cup of Nations titles?",
         "options": ["Egypt", "Cameroon", "Ghana"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Who is the all-time leading goalscorer in the African Cup of Nations?",
         "options": ["Samuel Eto'o", "Asamoah Gyan", "Didier Drogba"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Which team has won the most CONCACAF Gold Cup titles?",
         "options": ["Mexico", "United States", "Canada"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Who is the all-time leading goalscorer in the CONCACAF Gold Cup?",
         "options": ["Landon Donovan", "Javier Hernández", "Clint Dempsey"],
         "answer": 0,
         "selectedAnswer": -1
       }
     ]
   },{
     "quizName": "Science Quiz",
     "quizData": [
       {
         "Question": "True or False: The Earth is flat.",
         "options": ["True", "False"],
         "answer": 1,
         "selectedAnswer": -1
       },
       {
         "Question": "What is the chemical symbol for gold?",
         "options": ["Au", "Ag", "G"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "What is the largest organ in the human body?",
         "options": ["Liver", "Heart", "Skin"],
         "answer": 2,
         "selectedAnswer": -1
       },
       {
         "Question": "True or False: Oxygen is the most abundant element in the Earth's atmosphere.",
         "options": ["True", "False"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Which planet is known as the 'Red Planet'?",
         "options": ["Mars", "Venus", "Mercury"],
         "answer": 0,
         "selectedAnswer": -1
       }
     ]
   },{
     "quizName": "Geography Quiz",
     "quizData": [
       {
         "Question": "Which is the largest country by land area?",
         "options": ["Russia", "China", "United States"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "What is the capital of Australia?",
         "options": ["Sydney", "Melbourne", "Canberra"],
         "answer": 2,
         "selectedAnswer": -1
       },
       {
         "Question": "Which is the longest river in the world?",
         "options": ["Nile", "Amazon", "Mississippi"],
         "answer": 0,
         "selectedAnswer": -1
       },
       {
         "Question": "Which country is known as the 'Land of the Rising Sun'?",
         "options": ["China", "Japan", "South Korea"],
         "answer": 1,
         "selectedAnswer": -1
       },
       {
         "Question": "What is the highest mountain in Africa?",
         "options": ["Mount Everest", "Mount Kilimanjaro", "Mount McKinley"],
         "answer": 1,
         "selectedAnswer": -1
       }
     ]
   },
  ];
 static List<Map<String,dynamic>> getData(){

   return Data;
 }
 static int getLengthOfQuizs(){
   return Data.length;
 }
}
