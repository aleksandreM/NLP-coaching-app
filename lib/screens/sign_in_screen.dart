import 'package:flutter/material.dart';
import 'objectives_screen.dart';
import 'energy_screen.dart';
import '/widgets/custom_bottom_navigation_bar.dart';
import 'to_do_screen.dart';

class SignInScreen extends StatelessWidget {
  static const routName = '/sign-in-screen';
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/mandalasemfundo-01.png',
              height: 250,
              width: 250,
            ),
           const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  ' Ola,  _ _ _ _',
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            const Text('Toma consciência de\n     como te sentes!'),
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
              routeNavigator: ObjectivesScreen.routeName,
              aim: 'objetivos',
              imagePath: 'assets/images/objectivos.jpeg',
              secondAim: 'fazer acontecer',
              secondImagePath: 'assets/images/Tohappen.jpg',
              secondRoutNavigator: ToDoScreen.routName,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomCircularContainer(
                routeNavigator: EnergyScreen.routName,
                aim: '+ energia',
                imagePath: 'assets/images/battery.jpg',
                secondAim: 'performance',
                secondImagePath: 'assets/images/Performance.jpg',
                secondRoutNavigator: ToDoScreen.routName ), //temporarily
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class CustomCircularContainer extends StatelessWidget {
  final String routeNavigator;
  final String secondRoutNavigator;
  final String imagePath;
  final String aim;
  final String secondImagePath;
  final String secondAim;
  const CustomCircularContainer({
    required this.secondRoutNavigator,
    required this.routeNavigator,
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
                  Navigator.pushNamed(context, routeNavigator);
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
                  Navigator.pushNamed(context, secondRoutNavigator);
                },
                child: Image.asset(
                  secondImagePath,
                  height: 60,
                  width: 60,
                ),
              ),
              Text(secondAim),
            ],
          ),
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
