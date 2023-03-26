import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const routName = '/sign-in-button';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(' Place Holder for Logo'),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CircleAvatar(
                  child: Text('photo'),
                ),
                const Text('dummy text: hello Joao tribalho'),
              ],
            ),
            const Text('how are you feeling today?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(icon: Icons.sentiment_very_satisfied_sharp),
                CustomIconButton(icon: Icons.sentiment_neutral),
                CustomIconButton(icon: Icons.sentiment_dissatisfied),
                CustomIconButton(icon: Icons.sentiment_very_dissatisfied)
                ],
            )
          ],
        ));
  }
}

class CustomIconButton extends StatelessWidget {
  IconData icon;
   CustomIconButton({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {

    }, icon: Icon(icon));
  }
}
