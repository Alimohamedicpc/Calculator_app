import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.textcolor,
  });
  final Color backgroundColor;
  final String text;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: CircleBorder(),
          padding: EdgeInsets.all(10)),
      child: Text(
        text,
        style: TextStyle(color: textcolor, fontSize: 35),
      ),
    );
  }
}
