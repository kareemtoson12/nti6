import 'package:flutter/material.dart';
import 'package:nti6/first_screen.dart';
import 'package:nti6/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      routes: {
        'first_screen': (context) => FirstScreen(),
        'second_screen': (context) => ScreenTwo(),
      },
    );
  }
}
