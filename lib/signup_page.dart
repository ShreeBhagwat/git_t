import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:git_t/widgets/custom_text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign Up Page'),
            CustomTextField(
              hintText: "Enter your name",
              prefixIcon: (Icons.person),
              controller: name,
              isPassword: false,
            ),
            CustomTextField(
                hintText: "Enter your mail",
                prefixIcon: (Icons.mail),
                controller: email,
                isPassword: false),
            CustomTextField(
                hintText: "Enter password",
                prefixIcon: (Icons.password),
                controller: password,
                isPassword: true),
            ElevatedButton(onPressed: () {}, child: Text('Register'))
          ],
        ),
      ),
    );
  }
}
