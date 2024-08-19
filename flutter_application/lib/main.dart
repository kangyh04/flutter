import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application/photo_screen.dart';
import 'package:flutter_application/question_list.dart';
import 'package:flutter_application/quiz_screen.dart';
import 'package:flutter_application/result_screen.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainApp> {
  int questionIndex = 0;
  int totalScore = 0;

  void answerPressed(int score){
    // NOTE : 여기서도 변경가능한데 무슨차이인지
    //++questionIndex;
    setState(() {
      ++questionIndex;
    });
    totalScore += score;
    print(totalScore);
  }

  void resetQuiz(){
    setState(() {
      questionIndex = 0;
    });
    totalScore = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: questionIndex < questionList.length ?
        QuizScreen(answerPressed: answerPressed, questionIndex: questionIndex) :
        ResultScreen(totalScore: totalScore, resetQuiz: resetQuiz,),
    );
  }
}

class NavigatorApp extends StatelessWidget {
  const NavigatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navagator App Sample"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text("press here to see a photo"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_){
                        return PhotoScreen();
                      }),
                    );
                },
                child: Text("Cat Photo"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter study"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  Text("Stdying"),
                  Text("Flutter"),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
            Text("Hello"),
            SizedBox(
              height: 200,
            ),
            Text("World"),
          ],
        ),
    ),
    );
  }
}