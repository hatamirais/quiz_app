import 'package:flutter/material.dart';
import 'package:quiz_app/screen_theme.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Quiz App"), centerTitle: true),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/quiz-logo.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const ScreenTheme.deepPurple(),
        ),
      ),
    ),
  );
}
