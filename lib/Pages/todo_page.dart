// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:todo_app/Components/button_menu.dart';
import 'package:todo_app/Components/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final _controller = TextEditingController();

  List todoList = [
    ["One", false],
    ["Two", false]
  ];
// Checkbox tapped
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = value!;
    });
  }

  // Saving the task
  void saveNewTask() {
    setState(() {
      todoList.add([_controller.text, false]);
      // Clear controller so no data remains in the text field
      _controller.clear();
      Navigator.of(context).pop();
    });
  }

  // Add/Create a new task
  void addTask() {
    showDialog(
        context: context,
        builder: (context) {
          return ButtonMenu(
            controller: _controller,
            onSaved: saveNewTask,
            onCancelled: () => Navigator.of(context).pop(),
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            "To-do List",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 10,
        // ***** Custom shadow color added here *****
        shadowColor: Colors.black.withOpacity(0.8),
      ),
      backgroundColor: Colors.yellow[200],
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {
            addTask();
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.yellow,
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          // The index perameter always starts off at 1 and itterates as index++ with every item that is built by the builder.
          return TodoTile(
            taskName: todoList[index][0],
            taskCheck: todoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      ),
    );
  }
}
