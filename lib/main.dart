import 'package:flutter/material.dart';
import 'package:nti6/features/input/input_screen.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InputScreen());
  }
}
