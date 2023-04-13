import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const routName = '/sign-in-button';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign In',
          ),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
                  'assets/images/mandalasemfundo-01.png',
                  height: 250,
                  width: 250,
                ),
            const Text(
              ' Place Holder for Logo',
            ),
            Row(
              
              children:  [
                  CircleAvatar(
                  child: Text(
                    'photo',
                  ),
                ),
                 Text(
                  'dummy text: hello Joao tribalho',
                ),
              ],
            ),
             Text(
              'how are you feeling today?',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  icon: Icons.sentiment_very_satisfied_sharp,
                ),
                CustomIconButton(
                  icon: Icons.sentiment_neutral,
                ),
                CustomIconButton(
                  icon: Icons.sentiment_dissatisfied,
                ),
                CustomIconButton(
                  icon: Icons.sentiment_very_dissatisfied,
                ),
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
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
      ),
    );
  }
}
