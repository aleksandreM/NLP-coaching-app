import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/widgets/custom_authorisation_button_widget.dart';
import '../providers/CheckBoxTogglerProvider.dart';
import '../widgets/custom_text_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  static const routName = '/sign-up-screen';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/mandalasemfundo-01.png',
                height: 250,
                width: 250,
              ),
              const SizedBox(height: 40,),
              const CustomTextField(hintText: 'Username'),
              const CustomTextField(hintText: 'Email'),
              const CustomTextField(hintText: 'Password'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Consumer<CheckBoxTogglerProvider>(
                    builder: (context, checkBoxToggler, child) => Checkbox(
                      value: checkBoxToggler.isChecked,
                      onChanged: (newVAlue) => checkBoxToggler.toggleIsChecked(),
                    ),
                  ),
                  const Text('Remember Me'),
                ],
              ),
              const CustomAuthorisationButton(
                  pageNavigator: SignUpScreen.routName,
                  authorizationText: 'Sign up',
                  backgroundColor: Color.fromRGBO(
                    193,
                    179,
                    108,
                    1,
                  ),
                  textColor: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFieldDemo extends StatelessWidget {
  final String hintName;
  const CustomTextFieldDemo({
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
