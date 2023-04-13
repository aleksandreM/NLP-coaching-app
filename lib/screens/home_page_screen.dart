import 'package:flutter/material.dart';
import '/global_app_colors.dart';
import '/screens/sign_in_screen.dart';
import '/screens/sign_up_screen.dart';
import '/widgets/custom_text_field_widget.dart';
import '/widgets/custom_authorisation_button_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(
              16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/mandalasemfundo-01.png',
                  height: 250,
                  width: 250,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hintText: 'Username',
                ),
                const CustomTextField(
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomAuthorisationButton(
                    pageNavigator: SignInScreen.routName,
                    authorizationText: 'Sign in',
                    backgroundColor: GlobalAppColors.buttonSignInBackgroundCollor,
                    textColor: GlobalAppColors.buttonSignInTextCollor,),
                const SizedBox(
                  height: 20,
                ),
                  const CustomAuthorisationButton(
                  pageNavigator: SignUpScreen.routName,
                  authorizationText: 'Sign up',
                  backgroundColor: GlobalAppColors.mainBackgroundColor,
                  textColor: GlobalAppColors.buttonSignOutTextCollor
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
