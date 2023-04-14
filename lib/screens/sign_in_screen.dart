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
                SizedBox(
                  width: 15,
                ),
                Text(' __place holder for name__!'),
              ],
            ),
            const Text('How do you feel today?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(icon: Icons.sentiment_very_satisfied),
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
            const CustomCircularContainer(
              aim: 'Objectives',
              imagePath: 'assets/images/objectivos.jpeg',
              secondAim: 'to do',
              secondImagePath: 'assets/images/Tohappen.jpg',
            ),
            const CustomCircularContainer(
                aim: 'Energy',
                imagePath: 'assets/images/battery.jpg',
                secondAim: 'performance',
                secondImagePath: 'assets/images/Performance.jpg')
          ],
        ));
  }
}

class CustomCircularContainer extends StatelessWidget {
  final String imagePath;
  final String aim;
  final String secondImagePath;
  final String secondAim;
  const CustomCircularContainer({
    required this.aim,
    required this.imagePath,
    required this.secondAim,
    required this.secondImagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),
      margin: const EdgeInsets.only(left: 20, right: 20),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                 
                },
                child: Image.asset(
                  imagePath,
                  height: 60,
                  width: 60,
                ),
              ),
              Text(aim),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  
                },
                child: Image.asset(
                  secondImagePath,
                  height: 60,
                  width: 60,
                ),
              ),
              Text(secondAim),
            ],
          )
        ],
      ),
    );
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
