import 'package:flutter/material.dart';

import '../widgets/custom_text_field_widget.dart';


class SignUpScreen extends StatelessWidget {
  static const routName = '/sign-up-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/mandalasemfundo-01.png',
                height: 300,
                width: 300,
              ),
              const CustomTextField(hintText: 'Username'),
              const CustomTextField(hintText: 'Email'),
              const CustomTextField(hintText: 'Password')
          ],
        ),
      ),
      
    );
  }
}

class CustomTextFielddemo extends StatelessWidget {
  String hintName;
   CustomTextFielddemo({
    required this.hintName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: hintName),
    );
  }
}
