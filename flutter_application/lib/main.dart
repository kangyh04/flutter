import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application/photo_screen.dart';

void main() {
  runApp(const MaterialApp(home: NavigatorApp()));
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