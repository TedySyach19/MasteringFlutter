import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppLargeText extends StatelessWidget {
  AppLargeText({
    super.key,
    this.size = 30,
    required this.text,
    this.color = Colors.black,
    required this.isBold,
  });

  double size;
  final String text;
  final Color color;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: (isBold) ? FontWeight.bold : FontWeight.w100,
      ),
    );
  }
}

// ignore: must_be_immutable
class AppSmallText extends StatelessWidget {
  AppSmallText({
    super.key,
    this.size = 16,
    required this.text,
    this.color = Colors.black54,
    required this.isBold,
  });

  double size;
  final String text;
  final Color color;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: (isBold) ? FontWeight.bold : FontWeight.w100,
      ),
    );
  }
}
