import 'package:flutter/material.dart';
import 'package:patricia_app/screens/light_bulb_videos_screen.dart';
import 'package:patricia_app/screens/objectives_screen.dart';
import 'package:patricia_app/screens/three_six_year_goal_screen.dart';
import '/screens/home_page_screen.dart';


class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List <Widget> bottomNavigationPages = [
      MyHomePage(),
      LightBulbVideosScreen(),
      ObjectivesScreen(),
      ThreeSixYearGoalScreen(),
      
      
    ];
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomNavigationBar(
          
          backgroundColor: Colors.white,
         
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/Home.jpg',
                  height: 45,
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
          ],

          onTap: (index) {
            // Use Navigator to push a new instance of MyHomePage
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => bottomNavigationPages[index]
              ),
            );
          },
        ),
      ),
    );
  }
}
