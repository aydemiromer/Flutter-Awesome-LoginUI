import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/ui/constants/text_contants.dart';
import 'package:flutter_login_ui/ui/constants/contextExtension.dart';
import 'package:flutter_login_ui/ui/decorations/welcome_box_decoration.dart';
import 'package:flutter_login_ui/ui/styles/text_styles.dart';
import 'package:flutter_login_ui/ui/widgets/login_button.dart';
import 'package:flutter_login_ui/model/theme_provider.dart';
import 'package:provider/provider.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    DynamicTheme themeProvider = Provider.of<DynamicTheme>(context);
    return Consumer<DynamicTheme>(
      builder: (context, value, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: context.dynamicHeight(0.5),
                    width: context.dynamicWidth(1),
                    decoration: UIBoxDecoration.boxStyle,
                    child: stackWelcome(themeProvider, context),
                  ),
                  Container(
                    child: Padding(
                      padding: context.paddingAllow,
                      child: Column(
                        children: [
                          RoundedButtonWidget(
                            title: UITextConstants.logintext,
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
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
      },
    );
  }

  Stack stackWelcome(DynamicTheme themeProvider, BuildContext context) {
    return Stack(children: [
      changeThemePositioned(themeProvider),
      Positioned(
          child: Center(
        child: Text(
          UITextConstants.welcome,
          style: UITextStyles.headerStyle,
        ),
      )),
      bugsbunnyPositioned(context)
    ]);
  }

  Positioned bugsbunnyPositioned(BuildContext context) {
    return Positioned(
        height: context.dynamicHeight(0.2),
        width: context.dynamicWidth(0.4),
        left: 220,
        bottom: 40,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bugsbunny-vector.png'))),
        ));
  }

  Positioned changeThemePositioned(DynamicTheme themeProvider) {
    return Positioned(
        height: 50,
        right: 20,
        top: 40,
        child: Switch(
          value: themeProvider.getDarkMode(),
          onChanged: (value) {
            themeProvider.changeDarkMode(value);
          },
        ));
  }
}
