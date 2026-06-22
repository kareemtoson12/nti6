// Karim Toson || kareemtoson1@gmail.com || Mon Jun 22 2026 17:32:09

import 'package:flutter/material.dart';
import 'package:nti6/core/colors_manager.dart';
import 'package:nti6/core/styels_manger.dart';

class GenderSelection extends StatelessWidget {
  final IconData genderIcon;
  final String genderName;
  final Function() onTap;
  final bool isSelected;

  const GenderSelection({
    super.key,
    required this.genderName,
    required this.genderIcon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected
                ? ColorsManager.secondColor
                : Colors.grey.withValues(alpha: 0.5),
          ),
          child: Column(
            children: [
              Icon(genderIcon, size: 160, color: Colors.white),
              Text(genderName, style: StyelsManger.whiteBold25),
            ],
          ),
        ),
      ),
    );
  }
}
