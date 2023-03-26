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
          CustomTextField(hintName: 'name'),
          CustomTextField(hintName: 'last name'),
          CustomTextField(hintName: 'emal adrress'),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  String hintName;
   CustomTextField({
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
