import 'package:flutter/material.dart';
import 'package:flutter_login_ui/ui/constants/text_contants.dart';
import 'package:flutter_login_ui/ui/constants/contextExtension.dart';
import 'package:flutter_login_ui/ui/decorations/textfield_decoration.dart';
import 'package:flutter_login_ui/ui/decorations/welcome_box_decoration.dart';
import 'package:flutter_login_ui/ui/styles/text_styles.dart';
import 'package:flutter_login_ui/ui/widgets/login_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String email;
  String password;
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
                  decoration: UIBoxDecoration.boxStyleLoginPage,
                  child: topAreaStack(context)),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: UITextConstants.email,
                    hintStyle: UITextStyles.passiveTextStyle,
                    suffixIcon:
                        IconButton(icon: Icon(Icons.mail), onPressed: null)),
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: UITextConstants.password,
                    hintStyle: UITextStyles.passiveTextStyle,
                    suffixIcon:
                        IconButton(icon: Icon(Icons.star), onPressed: null)),
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButtonWidget(
                title: UITextConstants.logintext,
              ),
              SizedBox(
                height: 5,
              ),
              Text(UITextConstants.forgotpassword)
            ],
          ),
        ),
      ),
    );
  }

  Stack topAreaStack(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: Center(
          child: Text(
            UITextConstants.logintext,
            style: UITextStyles.headerStyle,
          ),
        )),
        Positioned(
          bottom: 0,
          child: Container(
            height: context.dynamicHeight(0.1),
            width: context.dynamicWidth(1),
            decoration: UIBoxDecoration.boxStyleLoginPageBottom,
          ),
        ),
        Positioned(
            height: context.dynamicHeight(0.2),
            width: context.dynamicWidth(0.4),
            left: context.dynamicWidth(0),
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/roadrunnerandfox.png'))),
            )),
        Positioned(
            height: context.dynamicHeight(0.2),
            width: context.dynamicWidth(0.4),
            right: context.dynamicWidth(0),
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/cloudfox.png'))),
            )),
      ],
    );
  }
}
