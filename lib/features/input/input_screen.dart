// Karim Toson || kareemtoson1@gmail.com || Mon Jun 22 2026 17:05:14

import 'package:flutter/material.dart';
import 'package:nti6/core/colors_manager.dart';
import 'package:nti6/core/styels_manger.dart';
import 'package:nti6/features/input/widgets/age_and_wighet.dart';
import 'package:nti6/features/input/widgets/gender_selection.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String gender = '';
  double hieght = 150;
  int age = 20;
  int weight = 50;
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

            Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withValues(alpha: 0.5),
              ),
              child: Column(
                children: [
                  Text('Hight', style: StyelsManger.whiteBold25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        hieght.toStringAsFixed(0),
                        style: StyelsManger.whiteBold25,
                      ),
                      Text('cm', style: StyelsManger.whiteBold25),
                    ],
                  ),
                  Slider(
                    activeColor: ColorsManager.secondColor,
                    min: 100,
                    max: 250,
                    value: hieght,
                    onChanged: (newValue) {
                      setState(() {
                        hieght = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),

            Row(
              children: [
                AgeAndWieght(age: age, weight: weight, isAge: true),
                AgeAndWieght(age: age, isAge: false, weight: weight),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
