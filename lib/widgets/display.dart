import 'package:calculator_app/main.dart';

import 'package:flutter/material.dart';

class Display_calculator extends StatefulWidget {
  const Display_calculator({
    super.key,
  });

  @override
  State<Display_calculator> createState() => _Display_calculatorState();
}

class _Display_calculatorState extends State<Display_calculator> {
  Widget calcbutton(String btntxt, Color btnColor, Color txtcolor) {
    return ElevatedButton(
      onPressed: () {
        calculation(btntxt);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(10)),
      child: Text(
        btntxt,
        style: TextStyle(color: txtcolor, fontSize: 35),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
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
                text,
                style: const TextStyle(color: Colors.white, fontSize: 96),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton("AC", const Color(0xffa0a0a0), Colors.black),
              calcbutton("+/-", const Color(0xffa0a0a0), Colors.black),
              calcbutton("%", const Color(0xffa0a0a0), Colors.black),
              calcbutton("/", const Color(0xffffa000), Colors.white),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton("7", const Color(0xff3a3a3a), Colors.white),
              calcbutton("8", const Color(0xff3a3a3a), Colors.white),
              calcbutton("9", const Color(0xff3a3a3a), Colors.white),
              calcbutton("x", const Color(0xffffa000), Colors.white),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton("4", const Color(0xff3a3a3a), Colors.white),
              calcbutton("5", const Color(0xff3a3a3a), Colors.white),
              calcbutton("6", const Color(0xff3a3a3a), Colors.white),
              calcbutton("-", const Color(0xffffa000), Colors.white),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              calcbutton("1", const Color(0xff3a3a3a), Colors.white),
              calcbutton("2", const Color(0xff3a3a3a), Colors.white),
              calcbutton("3", const Color(0xff3a3a3a), Colors.white),
              calcbutton("+", const Color(0xffffa000), Colors.white),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  calculation("0");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3a3a3a),
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.only(
                        left: 34, top: 10, right: 128, bottom: 10)),
                child: const Text(
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              calcbutton(".", const Color(0xff3a3a3a), Colors.white),
              const SizedBox(
                width: 25,
              ),
              calcbutton("=", const Color(0xffffa000), Colors.white),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  dynamic text = '0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {
    if (btnText == 'AC') {
      text = '0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == 'x') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == 'x' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == 'x') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
