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
  static BoxDecoration boxStylebottom = BoxDecoration(
      boxShadow: [
        BoxShadow(
          //color: UIColorStyles.TEXT_MODE,
          blurRadius: 10.0,
          spreadRadius: 1.0,
        ),
      ],
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(60),
        topRight: Radius.circular(60),
      ),
      color: UIColorStyles.TEXT_MODE);

  static BoxDecoration boxStyleLoginPage =
      BoxDecoration(color: UIColorStyles.PRIMARY_COLOR);

  static BoxDecoration boxStyleLoginPageBottom = BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60), topRight: Radius.circular(60)),
      color: Colors.white);
}
