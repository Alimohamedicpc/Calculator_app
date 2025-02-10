import 'package:calculator_app/widgets/button.dart';
import 'package:calculator_app/widgets/zero_button.dart';
import 'package:flutter/material.dart';

class Display_calculator extends StatelessWidget {
  const Display_calculator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "0",
                style: TextStyle(color: Colors.white, fontSize: 96),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                backgroundColor: Color(0xffa0a0a0),
                text: "AC",
                textcolor: Colors.black,
              ),
              CustomButton(
                  backgroundColor: Color(0xffa0a0a0),
                  text: "+/-",
                  textcolor: Colors.black),
              CustomButton(
                  backgroundColor: Color(0xffa0a0a0),
                  text: "%",
                  textcolor: Colors.black),
              CustomButton(
                  backgroundColor: Color(0xffffa000),
                  text: "/",
                  textcolor: Colors.white),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "7",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "8",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "9",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xffffa000),
                  text: "x",
                  textcolor: Colors.white)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "4",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "5",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "6",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xffffa000),
                  text: "-",
                  textcolor: Colors.white)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "1",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "2",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "3",
                  textcolor: Colors.white),
              CustomButton(
                  backgroundColor: Color(0xffffa000),
                  text: "+",
                  textcolor: Colors.white),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              zeroButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: "0",
                  textcolor: Colors.white),
              SizedBox(
                width: 5,
              ),
              CustomButton(
                  backgroundColor: Color(0xff3a3a3a),
                  text: ".",
                  textcolor: Colors.white),
              SizedBox(
                width: 25,
              ),
              CustomButton(
                  backgroundColor: Color(0xffffa000),
                  text: "=",
                  textcolor: Colors.white),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
