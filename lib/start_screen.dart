import 'package:flutter/material.dart';


class ScreenTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300, height: 300),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 80),
          OutlinedButton(
            onPressed: () {

            },
            child: Text(
              "Click here to start",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
