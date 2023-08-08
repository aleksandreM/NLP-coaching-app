import 'package:flutter/material.dart';
import 'package:patricia_app/global_app_colors.dart';
import 'package:patricia_app/widgets/custom_bottom_navigation_bar.dart';

class ToDoScreen extends StatelessWidget {
  static const routName = '/to-do-screen';

  ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: GlobalAppColors.buttonSignInBackgroundCollor,
          body: SingleChildScrollView(
            child: Column(
              
              
              children: [
                SizedBox(height: 10,),
                Text(
                  'What will I do in the time I selected in order to change, (3,6,12 months) write freely',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 70,),
                Text('1. ambient atmosphere Home:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                Center(child: TextFieldContainer()),
              ],
            ),
          ),
          bottomNavigationBar: CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white),
      height: 400,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      child: const TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        decoration: InputDecoration(hintText: 'Text', enabledBorder: InputBorder.none),
      ),
    );
  }
}
