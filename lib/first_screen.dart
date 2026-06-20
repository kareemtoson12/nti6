// Karim Toson || kareemtoson1@gmail.com || Fri Jun 19 2026 16:28:49

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('first screen', style: TextStyle(fontSize: 30))),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, 'second_screen', arguments: 55);
            },
            child: Text('navigate to second screen'),
          ),
        ],
      ),
    );
  }
}
