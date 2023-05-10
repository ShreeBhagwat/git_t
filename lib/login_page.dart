import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'widgets/custom_text_field.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _email = TextEditingController();
    final TextEditingController _password = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          CustomTextField(
            prefixIcon: Icons.person,
            controller: _email,
            hintText: 'Enter your email',
            isPassword: true,
          ),
          CustomTextField(
            prefixIcon: Icons.person,
            controller: _password,
            hintText: 'Enter your password',
            isPassword: false,
          ),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => app()));
              },
              child: Text("login"))
        ],
      ),
    );
  }
}
