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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  ' Hello',
                ),
                SizedBox(width: 15,),
                Text(' __place holder for name__!'),
              ],
            ),
          const Text('How do you feel today?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  icon: Icons.sentiment_very_satisfied
                ),
                CustomIconButton(
                  icon: Icons.sentiment_satisfied,
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
            ),
            Container(
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:Colors.white),
              
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.all(50),
              
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  
                  Text('data'),
                  Text('second data'),
                ],
              ),
            ),
            Container(
              
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color:Colors.white),
              
              margin: const EdgeInsets.only(left: 20, right: 20),
              padding: const EdgeInsets.all(50),
              
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  
                  Text('data'),
                  Text('second data'),
                ],
              ),
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
