import 'package:flutter/material.dart';

class OtherPage2 extends StatelessWidget {
  const OtherPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Other Page 2"),
        // Here we don't have a back button
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This is Other Page 2',
              style: TextStyle(fontSize: 24),
            ),
            // Here is the back button
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Go Home",
                  style: TextStyle(fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}