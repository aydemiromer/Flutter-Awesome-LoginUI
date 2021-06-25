import 'package:flutter/rendering.dart';
import 'package:flutter_login_ui/ui/styles/color_styles.dart';

class UITextStyles {
  static TextStyle headerStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 50,
      color: UIColorStyles.TEXT_MODE);
  static TextStyle buttonTextStyle = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: UIColorStyles.TEXT_MODE);
  static TextStyle passiveTextStyle = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 8,
      color: UIColorStyles.BLACK_TEXT_MODE);
}
// use : style: UITextStyles.
