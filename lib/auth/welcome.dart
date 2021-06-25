import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/ui/constants/text_contants.dart';
import 'package:flutter_login_ui/ui/constants/contextExtension.dart';
import 'package:flutter_login_ui/ui/decorations/welcome_box_decoration.dart';
import 'package:flutter_login_ui/ui/styles/text_styles.dart';
import 'package:flutter_login_ui/ui/widgets/login_button.dart';
import 'package:flutter_login_ui/ui/widgets/switch_theme_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: context.dynamicHeight(0.5),
                width: context.dynamicWidth(1),
                decoration: UIBoxDecoration.boxStyle,
                child: Stack(children: [
                  Positioned(
                      height: 50, right: 20, top: 40, child: ThemeButton()),
                  Positioned(
                      child: Center(
                    child: Text(
                      UITextConstants.welcome,
                      style: UITextStyles.headerStyle,
                    ),
                  )),
                  Positioned(
                      height: context.dynamicHeight(0.2),
                      width: context.dynamicWidth(0.4),
                      left: 220,
                      bottom: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/bugsbunny-vector.png'))),
                      ))
                ]),
              ),
              Container(
                child: Padding(
                  padding: context.paddingAllow,
                  child: Column(
                    children: [
                      RoundedButtonWidget(
                        title: UITextConstants.logintext,
                      ),
                      RoundedButtonWidget(
                        title: UITextConstants.registertext,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
