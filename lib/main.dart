import 'package:flutter/material.dart';
import 'package:flutter_login_ui/auth/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WelcomeView());
  }
}
