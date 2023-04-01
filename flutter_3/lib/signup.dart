import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(48, 16, 48, 16),
      // main inset from screen edges
      padding: const EdgeInsets.only(bottom: 48),
      // padding for better design
      color: Colors.white,
      // this column contains all the elements for the signup
      child: Column(children: [
        // the blue box at the top of the signup which contains the sign up text
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          margin: const EdgeInsets.only(bottom: 16),
          color: Colors.blue,
          child: const SizedBox(
            // I didnt knew how to make it take up all the space,
            // i would just use display: block or width: 100% in css so
            // I used this double.infinity thingy
            width: double.infinity,
            child: Center(
              child: Text(
                "Sign in",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const TextField(
            decoration: InputDecoration(hintText: "Username"),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: const TextField(
            decoration: InputDecoration(hintText: "Password"),
          ),
        ),
        Row(
          // Row to align the sign in button to the right
          mainAxisAlignment: MainAxisAlignment.end,
            children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.only(right: 8),
            child: TextButton(
              child: const Text("Sign in"),
              onPressed: () {},
            ),
          ),
        ])
      ]),
    );
  }
}
