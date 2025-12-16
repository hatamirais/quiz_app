import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

  /// Alternate Methods

  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  // // Goes back to StartScreen (one step back)
  // void resetState() {
  //   setState(() {
  //     activeScreen = StartScreen(switchScreen);
  //   });
  // }

  // // Goes directly to the very beginning (Dashboard/StartScreen)
  // void goToDashboard() {
  //   setState(() {
  //     activeScreen = StartScreen(switchScreen);
  //   });
  // }

  // void switchScreen() {
  //   setState(() {
  //     // Pass TWO functions to QuestionsScreen:
  //     // 1. resetState - go back one step
  //     // 2. goToDashboard - jump to dashboard
  //     activeScreen = QuestionsScreen(goToDashboard);
  //   });
  // }