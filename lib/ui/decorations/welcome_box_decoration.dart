import 'package:flutter/material.dart';
import 'package:flutter_login_ui/ui/styles/color_styles.dart';

class UIBoxDecoration {
  static BoxDecoration boxStyle = BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: UIColorStyles.PRIMARY_COLOR,
          blurRadius: 10.0,
          spreadRadius: 1.0,
        ),
      ],
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(60),
        bottomRight: Radius.circular(60),
      ),
      color: UIColorStyles.PRIMARY_COLOR);
}
