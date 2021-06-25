import 'package:flutter/material.dart';
import 'package:flutter_login_ui/ui/styles/color_styles.dart';
import 'package:flutter_login_ui/ui/styles/text_styles.dart';

class RoundedButtonWidget extends StatelessWidget {
  RoundedButtonWidget({this.title, this.colour, this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: UIColorStyles.PRIMARY_COLOR,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 300.0,
          height: 42.0,
          child: Text(
            title,
            style: UITextStyles.buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
