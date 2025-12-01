import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            height: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          /* Opacity(
            opacity: 0.5,
            child: Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              height: 300,
            ),
          ), */
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 80),
          OutlinedButton.icon(
            onPressed: (
              
            ) {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text("Click here to start"),
            icon: const Icon(Icons.arrow_right_alt, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
