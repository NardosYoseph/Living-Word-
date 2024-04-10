import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const BigText({
    super.key,
    required this.text,
    this.fontSize = 30,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'InriSerif', 
        fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal, 
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
