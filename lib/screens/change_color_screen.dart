import 'dart:math';

import 'package:flutter/material.dart';

class ChangeColorScreen extends StatefulWidget {
  const ChangeColorScreen({super.key});

  @override
  State<ChangeColorScreen> createState() => _ChangeColorScreenState();
}

class _ChangeColorScreenState extends State<ChangeColorScreen> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  @override
  void initState() {
    changeColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeColor(),
      child: Scaffold(
        body: AnimatedContainer(
          duration: Duration(milliseconds: 1500),
          color: backgroundColor,
          child: Center(
            child: InkWell(
              child: Text(
                'Hello there',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeColor() {
    final random = Random();

    backgroundColor = Color.fromARGB(
        255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
    textColor = Color.fromARGB(
        255, random.nextInt(256), random.nextInt(256), random.nextInt(256));

    setState(() {});
  }
}
