import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: BottomNavigationBar(backgroundColor: Colors.white, currentIndex: 0, items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Home.jpg',
              height: 50,
              width: 50,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Lamp.jpg',
              height: 50,
              width: 50,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Balance.jpg',
              height: 50,
              width: 50,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Companies.jpg',
              height: 50,
              width: 50,
            ),
            label: ''),
            BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/3dots.jpg',
              height: 50,
              width: 50,
            ),
            label: ''),
        // BottomNavigationBarItem(icon: Icon(Icons.abc), label: ''),
      ]),
    );
  }
}