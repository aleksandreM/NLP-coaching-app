import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/CheckBoxTogglerProvider.dart';

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
            const CustomTextField(hintText: 'Password'),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const SizedBox(width: 20,),
                Consumer<CheckBoxTogglerProvider>(
              builder: (context, checkBoxToggler, child) => Checkbox(
                  value: checkBoxToggler.isChecked, onChanged:(newVAlue) => checkBoxToggler.toggleIsChecked()),
            ),

           const Text('Remember Me'),

              ],
            )
            
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
