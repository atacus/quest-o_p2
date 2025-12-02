import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const ColorChangerApp());
}

class ColorChangerApp extends StatefulWidget {
  const ColorChangerApp({super.key});

  @override
  State<ColorChangerApp> createState() => _ColorChangerAppState();
}

class _ColorChangerAppState extends State<ColorChangerApp> {
  Color currentColor = Colors.blue;

  void changeColor() {
    setState(() {
      currentColor = Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: changeColor,
          child: Center(
            child: Text(
              'Toque para mudar a cor',
              style: TextStyle(
                fontSize: 28,
                color: currentColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

