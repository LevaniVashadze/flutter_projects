import 'package:flutter/material.dart';
import "package:flutter_4/otherpage.dart";
import "package:flutter_4/otherpage2.dart";

// I am very fancy, that's why I use separate files for each page :)
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is the Home Page',
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const OtherPage()));
                },
                child: const Text(
                  "Go to Other Page",
                  style: TextStyle(fontSize: 24),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OtherPage2()));
                },
                child: const Text(
                  "Go to Other Page 2",
                  style: TextStyle(fontSize: 24),
                ))
          ],
        ),
      ),
    );
  }
}
