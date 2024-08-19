import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.totalScore, required this.resetQuiz});

  final int totalScore;
  final Function resetQuiz;

  @override
  Widget build(BuildContext context) {
    String resultMessage;

    if (totalScore <= 10){
      resultMessage = "message 1";
    } else if (totalScore <= 14){
      resultMessage = "message 2";
    } else if (totalScore <= 18){
      resultMessage = "message 3";
    } else {
      resultMessage = "message 4";
    }

    return Center(
      child: Column(
        children: [
          SizedBox(height: 150,),
          Text(resultMessage),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){resetQuiz();}, child: Text("go back")),
        ],
      ),
    );
  }
}