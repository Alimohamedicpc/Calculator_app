import 'package:flutter/material.dart';

class zeroButton extends StatelessWidget {
  const zeroButton({
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
          shape: StadiumBorder(),
          padding: EdgeInsets.only(left: 34, top: 10, right: 128, bottom: 10)),
      child: Text(
        text,
        style: TextStyle(color: textcolor, fontSize: 35),
      ),
    );
  }
}
