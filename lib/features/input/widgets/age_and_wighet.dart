// Karim Toson || kareemtoson1@gmail.com || Mon Jun 22 2026 19:19:41

import 'package:flutter/material.dart';
import 'package:nti6/core/styels_manger.dart';

class AgeAndWieght extends StatefulWidget {
  AgeAndWieght({
    super.key,
    required this.age,
    required this.weight,
    required this.isAge,
  });

  int age;
  int weight;
  bool isAge;

  @override
  State<AgeAndWieght> createState() => _AgeAndWieghtState();
}

class _AgeAndWieghtState extends State<AgeAndWieght> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withValues(alpha: 0.5),
        ),
        child: Column(
          children: [
            Text(
              widget.isAge ? 'Age' : 'Weight',
              style: StyelsManger.whiteBold25,
            ),
            Text(
              widget.isAge ? widget.age.toString() : widget.weight.toString(),
              style: StyelsManger.whiteBold25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.isAge ? widget.age++ : widget.weight++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.isAge ? widget.age-- : widget.weight--;
                    });
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
