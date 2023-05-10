import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.name, required this.email});
  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Welcome $name ",
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        body: Center(
          child: Text("Your mail id is $email  "),
        ));
  }
}
