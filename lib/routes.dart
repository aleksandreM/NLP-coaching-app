import 'package:flutter/material.dart';
import '/screens/to_do_screen.dart';
import 'screens/objectives_screen.dart';
import '/screens/sign_in_screen.dart';
import '/screens/sign_up_screen.dart';
import '/screens/energy_screen.dart';
import 'screens/three_six_year_goal_screen.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    SignUpScreen.routName: (context) => const SignUpScreen(),
    SignInScreen.routName: (context) => const SignInScreen(),
    ObjectivesScreen.routeName: (context) => ObjectivesScreen(), // why can not be constant ?
    ThreeSixYearGoalScreen.routName: (context) => ThreeSixYearGoalScreen(),
    EnergyScreen.routName: (ctx) => const EnergyScreen(),
    ToDoScreen.routName: (context) => ToDoScreen(),
  };
}
