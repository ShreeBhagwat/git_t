import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home_page extends StatelessWidget {
  home_page({super.key, required this.name, required this.email});
  String name;
  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Welcome $name ",
            style: TextStyle(
                fontSize: 25,
                backgroundColor: Colors.black,
                color: Colors.white),
          ),
        ),
        body: Container(
          child: Text("Your mail id is $email  "),
        ));
  }
}
