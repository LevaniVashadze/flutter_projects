import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String text = "";
  String result = "";
  final audioplayer = AudioPlayer();
  String calculateSound = "sounds/calculate.wav";
  String clickSound = "sounds/click.wav";

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}1";
                        });
                      },
                      child: const Text('1', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}2";
                        });
                      },
                      child: const Text('2', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}3";
                        });
                      },
                      child: const Text('3', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
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
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}4";
                        });
                      },
                      child: const Text('4', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}5";
                        });
                      },
                      child: const Text('5', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}6";
                        });
                      },
                      child: const Text('6', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
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
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}7";
                        });
                      },
                      child: const Text('7', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}8";
                        });
                      },
                      child: const Text('8', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}9";
                        });
                      },
                      child: const Text('9', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
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
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "${text}0";
                        });
                      },
                      child: const Text('0', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "$text.";
                        });
                      },
                      child: const Text('.', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: calculateSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          result = eval(text);
                        });
                      },
                      child: const Text('=', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
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
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
                        setState(() {
                          text = "";
                          result = "";
                        });
                      },
                      child: const Text('C', style: TextStyle(fontSize: 40))),
                  CupertinoButton(
                      onPressed: () async {
                        await setAudio(path: clickSound);
                        audioplayer.play(audioplayer.source!);
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
      ]);
  }

  Future setAudio({required String path}) {
    return audioplayer.setSource(AssetSource(path));
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
    if (result == 0 && operator == "") {
      return number;
    }
    return result
        .toStringAsFixed(8)
        .replaceAll(RegExp(r'0+$'), '')
        .replaceAll(RegExp(r'\.$'), '');
  }
}