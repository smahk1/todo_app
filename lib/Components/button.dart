// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:flutter/material.dart';

class TodoButton extends StatelessWidget {
  const TodoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 650, left: 250),
              child: ElevatedButton(
                  onPressed: () {
                    print("done!");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    minimumSize: Size(100, 100),
                    elevation: 10,
                  ),
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.black,
                      ),
                    ),
                  )),
            );
  }
}