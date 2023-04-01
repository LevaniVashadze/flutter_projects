import 'package:flutter/material.dart';

import 'calculator_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Text('Calculator 3001', style: Theme.of(context).textTheme.headline4),
                      Text('The best calculator(not really)', style: Theme.of(context).textTheme.headline6 ),
                    ],
                  ),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const CalculatorPage()));
                }, child: const Text('Calculator')),
              ]
          ),
        ));
  }
}