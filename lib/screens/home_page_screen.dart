import 'package:flutter/material.dart';
import '/screens/sign_in_screen.dart';
import '/screens/sign_up_screen.dart';
import '../widgets/custom_text_field_widget.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/mandalasemfundo-01.png',
                height: 300,
                width: 300,
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
             const SizedBox(height: 25,),
              const CustomAuthorisationButton(
                  pageNavigator: SignInScreen.routName,
                  authorizationText: 'Sign in',
                  backgroundColor: Color.fromRGBO(193, 179, 108, 1),
                  textColor: Colors.black),
              const SizedBox(
                height: 20,
              ),
              CustomAuthorisationButton(
                  pageNavigator: SignUpScreen.routName,
                  authorizationText: 'Sign up',
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  textColor: const Color.fromRGBO(193, 179, 108, 1))
            ],
          ),
        ),
      ),
    );
  }
}



class CustomAuthorisationButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String authorizationText;
  final String pageNavigator;

  const CustomAuthorisationButton({
    required this.pageNavigator,
    required this.authorizationText,
    required this.backgroundColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 350,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Color.fromRGBO(193, 179, 108, 1)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            backgroundColor: backgroundColor,
            primary: textColor),
        onPressed: () {
          Navigator.pushNamed(context, pageNavigator);
        },
        child: Text(authorizationText),
      ),
    );
  }
}
