import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_styles.dart';
import './colors.dart';
import '../providers/CheckBoxTogglerProvider.dart';
import '../screens/sign_in_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/home_page_screen.dart';


void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckBoxTogglerProvider(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: AppStyles.fontFamily,
          // primarySwatch: Colors.amber,
          appBarTheme: AppBarTheme(
            backgroundColor: CustomCollors.mainBackgroundColor,
          ),

          scaffoldBackgroundColor: CustomCollors.mainBackgroundColor,
        ),
        home: const MyHomePage(),
        routes: {
          SignUpScreen.routName: (context) => const SignUpScreen(),
          SignInScreen.routName: (context) => const SignInScreen(),
        },
      ),
    );
  }
}
