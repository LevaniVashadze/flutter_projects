import 'package:flutter/cupertino.dart';
import '../components/calculator.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemPurple,
          middle: Text('Calculator'),),
        child: Calculator());
  }
}
