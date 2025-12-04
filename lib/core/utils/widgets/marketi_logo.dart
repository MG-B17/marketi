import 'package:flutter/material.dart';

class MarketiLogo extends StatelessWidget {
  const MarketiLogo({super.key, required this.height, required this.width});
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/Logo.png",
      width: width,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
