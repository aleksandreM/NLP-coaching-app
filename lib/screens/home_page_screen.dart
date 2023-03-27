import 'package:flutter/material.dart';
import '/screens/sign_in_screen.dart';
import '/screens/sign_up_screen.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/custom_authorisation_button_widget.dart';


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



