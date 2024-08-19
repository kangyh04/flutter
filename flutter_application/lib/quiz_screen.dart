import 'package:flutter/material.dart';
import 'package:flutter_application/question_list.dart';

class QuizScreen extends StatelessWidget {
  // NOTE : 이거 많아지면 관리는?
  const QuizScreen({
    super.key, 
    required this.answerPressed, 
    required this.questionIndex,});

  final Function answerPressed;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Text(questionList[questionIndex]["questionText"]),
          const SizedBox(height: 150),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][0]["score"]), 
            child: Text(questionList[questionIndex]["answers"][0]["text"])),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][1]["score"]), 
            child: Text(questionList[questionIndex]["answers"][1]["text"])),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][2]["score"]), 
            child: Text(questionList[questionIndex]["answers"][2]["text"])),
          ElevatedButton(
            onPressed: () => answerPressed(questionList[questionIndex]["answers"][3]["score"]), 
            child: Text(questionList[questionIndex]["answers"][3]["text"])),
        ],
      ),
    );
  }
}