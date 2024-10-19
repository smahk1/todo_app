// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool taskCheck;
  final String taskName;
  final Function(bool?)? onChanged;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCheck,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(0, 3),
                  blurRadius: 5,
                )
              ]),
          child: Row(
            children: [
              Checkbox(value: taskCheck, onChanged: onChanged),

              // Task name
              Text(taskName),
            ],
          ),
        ));
  }
}
