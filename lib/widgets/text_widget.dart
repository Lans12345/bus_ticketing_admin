import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  late String label;
  late Color color;
  late double fontSize;

  NormalText(
      {required this.label, required this.fontSize, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontWeight: FontWeight.normal, fontSize: fontSize, color: color),
    );
  }
}

class BoldText extends StatelessWidget {
  late String label;
  late Color color;
  late double fontSize;

  BoldText({required this.label, required this.fontSize, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: fontSize, color: color),
    );
  }
}
