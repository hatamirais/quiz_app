import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

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
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            currentQuestion.question,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onSelected: () {},
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onSelected: () {},
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onSelected: () {},
          ),
          const SizedBox(height: 10),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onSelected: () {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
