import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("photo screen"),
          leading: IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back)),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              "https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
        ),
      ),
    );
  }
}