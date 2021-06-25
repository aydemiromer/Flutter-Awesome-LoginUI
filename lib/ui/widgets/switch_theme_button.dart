import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 25,
      icon: Icon(Icons.lightbulb_outline_sharp),
      onPressed: () {},
      color: Colors.black,
      focusColor: Colors.grey,
    );
  }
}
