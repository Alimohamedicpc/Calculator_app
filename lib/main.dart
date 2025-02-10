import 'package:calculator_app/widgets/display.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator_app());
}

class Calculator_app extends StatelessWidget {
  const Calculator_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Display_calculator(),
    );
  }
}
