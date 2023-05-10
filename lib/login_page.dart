import 'package:flutter/material.dart';
import 'package:git_t/home_page.dart';
import 'package:git_t/signup_page.dart';
import 'widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailTextEditingController =
        TextEditingController();
    final TextEditingController _passwordTextEditingController =
        TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Login"),
            CustomTextField(
              prefixIcon: Icons.person,
              controller: _emailTextEditingController,
              hintText: 'Enter your email',
              isPassword: true,
            ),
            CustomTextField(
              prefixIcon: Icons.person,
              controller: _passwordTextEditingController,
              hintText: 'Enter your password',
              isPassword: false,
            ),
            GestureDetector(
              child: Text(
                'Do have an account? Create an Account',
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUp()));
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => HomePage(
                                name: 'Shree bhagwat',
                                email: _emailTextEditingController.text,
                              )));
                },
                child: Text("login"))
          ],
        ),
      ),
    );
  }
}
