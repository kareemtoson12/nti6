// Karim Toson || kareemtoson1@gmail.com || Mon Jun 22 2026 17:05:14

import 'package:flutter/material.dart';
import 'package:nti6/core/colors_manager.dart';
import 'package:nti6/core/styels_manger.dart';
import 'package:nti6/features/input/widgets/gender_selection.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primryColor,
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        centerTitle: true,
        backgroundColor: ColorsManager.primryColor,
        title: Text('BMI Calculator', style: StyelsManger.whiteBold25),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                GenderSelection(
                  genderIcon: Icons.male,
                  genderName: 'Male',
                  isSelected: gender == 'Male',
                  onTap: () {
                    setState(() {
                      gender = 'Male';
                    });
                  },
                ),
                GenderSelection(
                  genderIcon: Icons.female,
                  genderName: 'female',
                  isSelected: gender == 'female',
                  onTap: () {
                    setState(() {
                      gender = 'female';
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
