// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AddCancelButton extends StatefulWidget {
  final String buttonName;
  VoidCallback onPressed;
  

  AddCancelButton(
      {super.key,
      required this.buttonName,
      required this.onPressed,
      });

  @override
  State<AddCancelButton> createState() => _AddCancelButtonState();
}

class _AddCancelButtonState extends State<AddCancelButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      color: Colors.yellow[200],
      child: Text(widget.buttonName),
    );
  }
}
