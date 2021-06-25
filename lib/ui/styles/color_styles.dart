import 'package:flutter/material.dart';

class UIColorStyles {
  static const Color PRIMARY_COLOR = Color(0xFFFF9800);
  static const Color DARK_MODE = Color(0xFF1A1A1A);
  static const Color TEXT_MODE = Color(0xFFFFFFFF);
  static const Color BLACK_TEXT_MODE = Color(0xFF000000);
}

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Colors.blue[900].withOpacity(.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20),
];
