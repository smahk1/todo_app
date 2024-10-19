// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:todo_app/Components/button.dart';
import 'package:todo_app/Components/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

void createContainer() {}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            "To Do",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 10,
        // ***** Custom shadow color added here *****
        shadowColor: Colors.black.withOpacity(0.8),
      ),
      backgroundColor: Colors.yellow[200],
      body: ListView(
        children: [
          // Tiles for the list
          TodoTile(
            taskCheck: false,
            taskName: "Tutorial Start",
            onChanged: (p0) {},
          ),
          // Button
          TodoButton(),
        ],
      ),
    );
  }
}
