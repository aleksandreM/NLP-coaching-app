import 'package:flutter/material.dart';
import 'package:patricia_app/providers/CheckBoxTogglerProvider.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
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
          fontFamily: GoogleFonts.poppins().fontFamily,
          // primarySwatch: Colors.amber,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[300],
          ),

          scaffoldBackgroundColor: Colors.grey[300],
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
