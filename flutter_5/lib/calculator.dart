import 'package:flutter/cupertino.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String text = "";
  String result = "";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemPurple,
        middle: Text('Calculator'),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(text,
                  style: const TextStyle(
                      fontSize: 40,
                      color: CupertinoColors.black,
                      decoration: TextDecoration.none)),
              Text(result,
                  style: const TextStyle(
                      fontSize: 40,
                      color: CupertinoColors.systemGrey,
                      decoration: TextDecoration.none)),
              Row(
                children: [
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}1";
                        });
                      },
                      child: const Text('1', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}2";
                        });
                      },
                      child: const Text('2', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}3";
                        });
                      },
                      child: const Text('3', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "$text+";
                        });
                      },
                      child: const Text('+', style: TextStyle(fontSize: 40))),
                ],
              ),
              Row(
                children: [
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}4";
                        });
                      },
                      child: const Text('4', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}5";
                        });
                      },
                      child: const Text('5', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}6";
                        });
                      },
                      child: const Text('6', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "$text-";
                        });
                      },
                      child: const Text('-', style: TextStyle(fontSize: 40))),
                ],
              ),
              Row(
                children: [
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}7";
                        });
                      },
                      child: const Text('7', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}8";
                        });
                      },
                      child: const Text('8', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}9";
                        });
                      },
                      child: const Text('9', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "$text*";
                        });
                      },
                      child: const Text('*', style: TextStyle(fontSize: 40))),
                ],
              ),
              Row(
                children: [
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "${text}0";
                        });
                      },
                      child: const Text('0', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "$text.";
                        });
                      },
                      child: const Text('.', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          result = eval(text);
                        });
                      },
                      child: const Text('=', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "$text/";
                        });
                      },
                      child: const Text('/', style: TextStyle(fontSize: 40))),
                ],
              ),
              Row(
                children: [
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = "";
                          result = "";
                        });
                      },
                      child: const Text('C', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () {
                        setState(() {
                          text = text.substring(0, text.length - 1);
                        });
                      },
                      child: const Text('⌫',
                          style: TextStyle(
                              fontSize: 40, color: CupertinoColors.systemRed))),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  String eval(String text) {
    var result = 0.0;
    var number = "";
    var operator = "";

    for (var i = 0; i < text.length; i++) {
      if (text[i] == "+" ||
          text[i] == "-" ||
          text[i] == "*" ||
          text[i] == "/") {
        if (operator == "") {
          result = double.parse(number);
        } else if (operator == "+") {
          result += double.parse(number);
        } else if (operator == "-") {
          result -= double.parse(number);
        } else if (operator == "*") {
          result *= double.parse(number);
        } else if (operator == "/") {
          result /= double.parse(number);
        }
        number = "";
        operator = text[i];
      } else {
        number = "$number${text[i]}";
      }
    }
    if (operator == "+") {
      result += double.parse(number);
    } else if (operator == "-") {
      result -= double.parse(number);
    } else if (operator == "*") {
      result *= double.parse(number);
    } else if (operator == "/") {
      result /= double.parse(number);
    }
    return result
        .toStringAsFixed(8)
        .replaceAll(RegExp(r'0+$'), '')
        .replaceAll(RegExp(r'\.$'), '');
  }
}
