import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool passwordHidden = true;
  bool passwordHidden2 = true;

  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(10, 10),
            ),
          ],
        ),
        padding: const EdgeInsets.all(36),
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                'Register',
                style: Theme.of(context).textTheme.headline5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: TextFormField(
                  obscureText: passwordHidden,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordHidden = !passwordHidden;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: TextFormField(
                  obscureText: passwordHidden2,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordHidden2 = !passwordHidden2;
                        });
                      },
                      icon: const Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: ElevatedButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  child: const Text('Register'),
                ),
              ),
            ],
          ),
        ));
  }
}
