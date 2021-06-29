import 'package:flutter/material.dart';
import 'package:flutter_login_ui/auth/login.dart';
import 'package:flutter_login_ui/auth/register.dart';
import 'package:flutter_login_ui/auth/welcome.dart';
import 'package:flutter_login_ui/model/theme_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<DynamicTheme>(
      create: (context) => DynamicTheme(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicTheme>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.getDarkMode() ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeView(),
        '/second': (context) => LoginView(),
        '/third': (context) => RegisterView(),
      },
    );
  }
}
