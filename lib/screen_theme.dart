import 'package:flutter/material.dart';

const allignTopCenter = Alignment.topCenter;
const allignBotCenter = Alignment.bottomCenter;

class ScreenTheme extends StatelessWidget {
  const ScreenTheme(this.color1, this.color2, {super.key});

  const ScreenTheme.deepPurple({super.key})
    : color1 = Colors.deepPurple,
      color2 = Colors.white54;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: allignTopCenter,
          end: allignBotCenter,
        ),
      ),
    );
  }
}