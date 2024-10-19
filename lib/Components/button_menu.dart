// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ButtonMenu extends StatefulWidget {
  const ButtonMenu({super.key});

  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 200,
        height: 100,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(),
        ),
      ),
    );
  }
}
