// Karim Toson || kareemtoson1@gmail.com || Fri Jun 26 2026 16:43:38

import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String text;
  final Function() onDelete;

  const TodoWidget({super.key, required this.text, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(fontSize: 25)),
          IconButton(onPressed: onDelete, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
