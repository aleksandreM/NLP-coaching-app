
import 'package:flutter/material.dart';

class EnergyScreen extends StatelessWidget {
  static const routName = '/energy-screen';
  const EnergyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Text('Energy screen'),
      ),
    );
  }
}