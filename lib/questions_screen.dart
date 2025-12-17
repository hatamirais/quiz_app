import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onGoBack, {super.key});

  final void Function() onGoBack;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Questions Screen",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 40), // Gave gap between text and button
          // Button 1: Go back one step
          OutlinedButton.icon(
            onPressed: () {
              widget.onGoBack();
            }, // Calls resetState (but doesn't know that!)
            label: const Text("Go Back One Step"),
            icon: const Icon(Icons.arrow_back),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
