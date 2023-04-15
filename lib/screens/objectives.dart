import 'package:flutter/material.dart';

class ObjectivesScreen extends StatelessWidget {
  static const routName = '/objectives-screen';
  const ObjectivesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Text('Objective screen'),
      ),
    );
  }
}