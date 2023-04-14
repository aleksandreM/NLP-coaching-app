import 'package:flutter/material.dart';
import './screens/sign_in_screen.dart';
import './screens/sign_up_screen.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    SignUpScreen.routName: (context) => const SignUpScreen(),
    SignInScreen.routName: (context) => const SignInScreen(),

  };
}