// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todo_app/Components/add_cancel_button.dart';

class ButtonMenu extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancelled;
  // Constructor
  ButtonMenu(
      {super.key,
      required this.controller,
      required this.onCancelled,
      required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        width: 400,
        height: 200,
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 5, right: 5),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Input task here",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Add button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        AddCancelButton(buttonName: "Add", onPressed: onSaved),
                  ),
                  // Cancel button
                  AddCancelButton(buttonName: "Cancel", onPressed: onCancelled),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
