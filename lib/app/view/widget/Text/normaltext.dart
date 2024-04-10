import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const NormalText({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'InriSerif',
        fontStyle: FontStyle.normal, // Assuming you have Inri Serif font installed
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
