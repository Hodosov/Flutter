import 'package:flutter/foundation.dart';

class Quiestion {
  final String title;
  final List<Map> answers;

  Quiestion({
    required this.title, 
    required this.answers,
    });
}

class QuestionData {
  final _data = [
    Quiestion(
      title: "тут будет вопрос",
      answers: [
        {'answer': "1"},   
        {'answer': "2"},
        {'answer': "3", 'isCorrect': 1},
        {'answer': "4"},
      ]
    ),
     Quiestion(
      title: "тут будет вопрос2",
      answers: [
        {'answer': "1"},   
        {'answer': "2"},
        {'answer': "3", 'isCorrect': 1},
        {'answer': "4"},
      ]
    ),
  ];

  List<Quiestion> get questions => [..._data];
}