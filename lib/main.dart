import 'package:flutter/material.dart';
import 'package:git_t/login_page.dart';

void main() {
  runApp(GitTrial());
}

class GitTrial extends StatelessWidget {
  const GitTrial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
