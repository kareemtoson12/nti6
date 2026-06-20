// Karim Toson || kareemtoson1@gmail.com || Fri Jun 19 2026 16:41:31

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final int age = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('screen two', style: TextStyle(fontSize: 30))),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(age.toString()),
          ),
        ],
      ),
    );
  }
}
