import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routName = '/sign-up-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          CustomTextFielddemo(hintName: 'name'),
          CustomTextFielddemo(hintName: 'last name'),
          CustomTextFielddemo(hintName: 'emal adrress'),
        ],
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
