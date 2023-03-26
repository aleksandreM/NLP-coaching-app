import 'package:flutter/material.dart';
import '/screens/sign_in_screen.dart';
import '/screens/sign_up_screen.dart';

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
              const CustomAuthorizationTextField(
                hintText: 'Username',
              ),
              const CustomAuthorizationTextField(
                hintText: 'Password',
              ),
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

class CustomAuthorizationTextField extends StatelessWidget {
  final String hintText;

  const CustomAuthorizationTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black38)),
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
            side: BorderSide(color: Color.fromRGBO(193, 179, 108, 1)),
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
