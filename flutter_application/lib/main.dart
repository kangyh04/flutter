import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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