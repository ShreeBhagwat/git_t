import 'package:flutter/material.dart';
import 'package:git_t/home_page.dart';
import 'package:git_t/widgets/custom_text_field.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final TextEditingController nameTextEditingController =
      TextEditingController();
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Sign Up Page'),
            ),
            CustomTextField(
              hintText: "Enter your name",
              prefixIcon: (Icons.person),
              controller: nameTextEditingController,
              isPassword: false,
            ),
            CustomTextField(
                hintText: "Enter your mail",
                prefixIcon: (Icons.mail),
                controller: emailTextEditingController,
                isPassword: false),
            CustomTextField(
                hintText: "Enter password",
                prefixIcon: (Icons.password),
                controller: passwordTextEditingController,
                isPassword: true),
            GestureDetector(
                child: Text(
                  'Already have an Account? Login',
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => HomePage(
                            name: nameTextEditingController.text,
                            email: emailTextEditingController.text))),
                child: const Text('Register'))
          ],
        ),
      ),
    );
  }
}
